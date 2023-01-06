# VolleyballScoreApp
[English](./README.md) / 日本語

|Branch|Result|
|:--:|:--:|
|[main](https://github.com/naoki-mrmt/VolleyballScoreApp/tree/main)|[![CI](https://github.com/naoki-mrmt/VolleyballScoreApp/actions/workflows/main.yml/badge.svg?branch=main)](https://github.com/naoki-mrmt/VolleyballScoreApp/actions/workflows/main.yml)|
|[develop](https://github.com/naoki-mrmt/VolleyballScoreApp)|[![CI](https://github.com/naoki-mrmt/VolleyballScoreApp/actions/workflows/main.yml/badge.svg?branch=develop)](https://github.com/naoki-mrmt/VolleyballScoreApp/actions/workflows/main.yml)|

## 目次
- [開発](#開発)

## 開発

### 環境情報
- Xcode 14.2
- macOS Monterey 12.5+

### セットアップ
1. プロジェクトのクローン
    ```shell
    git clone https://github.com/naoki-mrmt/VolleyballScoreApp.git
    cd VolleyballScoreApp
    ```
2. Swiftプロジェクトのビルドを高速化 (任意)
    ```shell
    make enable-faster-builds
    ```
3. ```make setup```を実行
  - セットアップが完了すると、Xcodeでワークスペースが開きます

### ワークスペースを起動
- pod installが完了すると、Xcodeでワークスペースが開きます
```shell
make
```

### ヘルプ
```shell
make help

setup                install bundler and bundle install, pod install
generate-xcworkspace generate xcworkspace
gem-install          gem install
bundle-install       bundle install
pod-install          bundle exec pod install
enable-faster-builds Enable faster builds for Swift projects
Xcode-build          Xcode build command for CI
Xcode-clean          delete DerivedData
help                 print this message
```
