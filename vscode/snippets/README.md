# snippets for VS Code

~/Library/"Application Support"/Code/User/snippets/
(zコマンドで瞬間移動しよう)
このフォルダの中にVS CodeのSnippetsの設定ファイルがある。
拡張子が`.code-snippets`だと、グローバルなSnippetsになるみたい。
拡張子`.rb`のファイルのみに対応したければ、`rb.json`ファイルを作る。

## editing snippets with yaml

name:"editing snippets with yaml"
publisher:"74th"

一時的にYAMLファイルで編集できるようになるだけなので、その点が危険。
JSONファイルにコメントを書いていても、上書きされてしまう。

# 初期の説明

	Place your global snippets here. Each snippet is defined under a snippet name and has a scope, prefix, body and 
	description. Add comma separated ids of the languages where the snippet is applicable in the scope field. If scope 
	is left empty or omitted, the snippet gets applied to all languages. The prefix is what is 
	used to trigger the snippet and the body will be expanded and inserted. Possible variables are: 
	$1, $2 for tab stops, $0 for the final cursor position, and ${1:label}, ${2:another} for placeholders. 
	Placeholders with the same ids are connected.
	Example:

```json
{
	"Print to console": {
		"scope": "javascript,typescript",
		"prefix": "log",
		"body": [
			"console.log('$1');",
			"$2"
		],
		"description": "Log output to console"
  }
}
```
