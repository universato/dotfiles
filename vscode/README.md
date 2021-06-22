[VSCodeでmarkdownのときのみ、行末trimをしない設定 \- Qiita](https://qiita.com/arrowKato/items/9699ad65c1e4e4c58c10)

```json
{
    "files.trimTrailingWhitespace": true,
    "[markdown]": {
        "files.trimTrailingWhitespace": false,
        "editor.renderWhitespace": "boundary"
    },
}
```


indexのところで、def indexが展開されて、defが二重になって鬱陶しい。
```json
            "def index": {
                "prefix": "def index",
                "body": [
                    "def index",
                    "  $1",
                    "end"
                ]
            },
            "def update": {
                "prefix": "def update",
                "body": [
                    "def update",
                    "  $1",
                    "end"
                ]
            }
```
