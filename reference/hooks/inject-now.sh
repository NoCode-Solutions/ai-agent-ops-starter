#!/bin/bash
# SessionStart: 現在地のファイルをコンテキストへ自動注入する。
#
# 考え方: 毎回「いまどうなってる？」を説明せずに済ませる。
#         行数の上限を決めても、守らせる仕組みがないと膨らむので、
#         ここで打ち切って警告を差し込む。
#
# 使い方: NOW のパスを自分の環境に書き換え、.claude/settings.json の
#         hooks.SessionStart に絶対パスで登録する。chmod +x を忘れない。
#
# 注意: 時刻起動の仕組み（cron / launchd 等）から呼ぶ場合、普段ターミナルで
#       使っている PATH は引き継がれない。必要なコマンドがあれば
#       スクリプトの冒頭で PATH を通す。検証は環境変数を空にして再現する。

NOW="<現在地ファイルの絶対パス>"
[ -f "$NOW" ] || exit 0

MAX_LINES=100

python3 - "$NOW" "$MAX_LINES" <<'PY'
import json, sys

path, max_lines = sys.argv[1], int(sys.argv[2])
with open(path, encoding="utf-8") as f:
    body = f.read().strip()

if not body:
    sys.exit(0)

lines = body.splitlines()
if len(lines) > max_lines:
    lines = lines[:max_lines] + ["", f"（{max_lines}行を超えています。古い行を整理してください）"]
    body = "\n".join(lines)

print(json.dumps({
    "hookSpecificOutput": {
        "hookEventName": "SessionStart",
        "additionalContext": (
            "以下は現在の状況の自動注入です。案件の現状と次アクションはここを"
            "一次情報として扱い、作業をしたセッションでは終了前に更新してください。\n\n"
            + body
        ),
    }
}, ensure_ascii=False))
PY
