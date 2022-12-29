# VolleyballScoreApp
[English](./README.md) / 日本語

## 目次
- [開発](#開発)

## 開発

### 環境情報
- Xcode 14.2
- macOS Monterey 12.5+

### セットアップ
1. プロジェクトのクローン
    ```shell
    $ git clone https://github.com/naoki-mrmt/VolleyballScoreApp.git
    $ cd VolleyballScoreApp
    ```
2. Swiftプロジェクトのビルドを高速化 (任意)
    ```shell
    $ defaults write com.apple.dt.XCBuild EnableSwiftBuildSystemIntegration 1
    ```
3. CocoaPodsのインストール
    ```shell
    $ make setup
    ```
4. xcworkspaceの生成・起動
    ```shell
    $ make
    ```

### ヘルプ
`make help`

```shell
$ make help

generate             generate xcworkspace
open                 Open workspace in Xcode
setup                setup
help                 print this message
```
