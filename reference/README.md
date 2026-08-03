# 答え合わせ用

[`prompts/`](../prompts/) が作ったものと見比べるために置いてあります。先に読む必要はありません。

| ファイル | 対応するプロンプト | 何のために見るか |
|---|---|---|
| [`CLAUDE.md`](CLAUDE.md) | `01-foundation` | ルールファイルの骨格。節の並びと、禁止事項を理由と対で書く表の形 |
| [`before-done.md`](before-done.md) | `03-done-checklist` | 完了前に通す項目の全文。自動化を書いたとき・外に出すときの追加分を含む |
| [`memory-writing.md`](memory-writing.md) | `01-foundation` | 記憶に何を残し、何を残さないか |
| [`hooks/block-outbound.sh`](hooks/block-outbound.sh) | `05-block-outbound-hook` | 動く実装。改行やパイプでつないだコマンドを1行に潰してから判定する部分 |
| [`hooks/inject-now.sh`](hooks/inject-now.sh) | `07-inject-now-hook` | 動く実装。行数の上限を超えたときに警告を足す部分 |

`CLAUDE.md` の `<...>` は、自社の内容に置き換える箇所です。そのままコピーして使うより、プロンプトに作らせたものを、こちらと見比べて足りない節を補うほうが早く済みます。

フックの2本は、コピーして使う前に**必ず中身を読んでください。**塞ぐ対象は環境ごとに違います。自分の環境で拒否したい操作が入っているかを確かめてから登録します。
