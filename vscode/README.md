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
