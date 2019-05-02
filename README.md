# AEワーキングディレクトリの管理規約


## 命名規則

aepの命名は以下のように, 作業日_イベント名_ヴァージョン.aepとする.

- 作業日: 毎回使用され冗長なので、年は2ケタとする. YYMMDD.
- イベント名: どのシステムでも利用できるように英語とする.
- ヴァージョン: ヴァージョン規則参照

```txt
190502_HogeEvent_v0.0.aep
```

## ヴァージョンについて

[セマンティック バージョニング 2.0.0 | Semantic Versioning](https://semver.org/lang/ja/)を参考にする.

開発のを2つの状態に分ける。
- 開発中: 	v0.x
	- プレビュー: v0.x
- リリース後: 	v1.x
- リリース作業: v1.x_rc1


## バックアップとリリースについて

- [R] リリース:	Dropbox
- [B] バックアップ:	Bluelay
- [D] デリート

## 作業ディレクトリ構成

※ Developディレクトリには、最終的には収集されたプロジェクトだけを残す
※ Previewディレクトリは、バックアップ時に削除する


```
/AE-Works/
	/190101_Projname/

		[B] /Develop/
			※ /190101_Projname_v1.0rc1.aepフォルダー 最終的にフッテージを収集する.

			190101_Projname_v0.0.aep


			[D] /Pre-Rendered (temp)

			[D] /PreView (temp)/
					※ リリース後は削除しても大丈夫
					/v0.1/
						190101_Projname_v0.1.mp4
						190101_Projname_v0.1_740p.mp4
						190101_Projname_v0.1_1024p.mp4
					/v0.2/
						190101_Projname_v0.2.mp4
					/v0.3/
						190101_Projname_v0.3.mp4

		[B] /Resources/
				/image/
				/movie/
				/bgm/
				
		[R] /Release/
				※ 納品物. 削除禁止.
				変更履歴.txt
				/v1.0/
					190101_Projname_v1.0.mp4
					190101_Projname_v1.0_740p.mp4
					190101_Projname_v1.0_1024p.mp4
				/v1.1/
					190101_Projname_v1.1.mp4

```












