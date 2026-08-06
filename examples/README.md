# 実物

社内で実際に使っているものです。雛形ではなく、動いているファイルから固有名詞と社内の事情を外しただけのものを置いています。

**ここにあるのは読むためのものです。**インストールしても入りません。他社の業務そのものなので、そのまま入れても使い道がないためです。見てほしいのは中身より書式のほうです。

（探索エージェント `scout` はプラグインに同梱してあり、インストールすればそのまま使えます。実体は [`../plugins/ai-agent-ops/agents/scout.md`](../plugins/ai-agent-ops/agents/scout.md)）

| ファイル | 何のためのものか |
|---|---|
| [`memory/feedback_exit-code-is-not-success.md`](memory/feedback_exit-code-is-not-success.md) | 記憶ファイル1件の実物。事故の具体を日付つきで書いてある |
| [`skills/codex-second-opinion/SKILL.md`](skills/codex-second-opinion/SKILL.md) | 別系統のAIに読み取り専用でレビューさせるスキル |
| [`skills/demo-company-hp/SKILL.md`](skills/demo-company-hp/SKILL.md) | 提案用のデモサイトを、調査から公開まで通しで作るスキル |

## 記憶の実物を1件だけ置いている理由

記憶は各社の中身そのものなので、他社にとって役立つのは書式だけです。見てほしいのは **Why に事故の具体が入っているところ**です。一般論として「終了コードを信じるな」とだけ書いても、次に似た場面が来たときに結びつきません。

書き方は [`../plugins/ai-agent-ops/reference/memory-writing.md`](../plugins/ai-agent-ops/reference/memory-writing.md) にまとめてあります。

## スキルを2本置いている理由

`description` の書き方の差を見比べられるようにしてあります。片方は用途が限定されていて、もう片方は「使わない場面」を明記して呼ばれすぎを防いでいます。手順の中身より、先頭の数行のほうが効きます。
