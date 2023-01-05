# VolleyballScoreApp
English / [日本語](./README-ja.md)

|Branch|Result|
|:--:|:--:|
|[main](https://github.com/naoki-mrmt/VolleyballScoreApp/tree/main)|[![CI](https://github.com/naoki-mrmt/VolleyballScoreApp/actions/workflows/main.yml/badge.svg?branch=main)](https://github.com/naoki-mrmt/VolleyballScoreApp/actions/workflows/main.yml)|
|[develop](https://github.com/naoki-mrmt/VolleyballScoreApp)|[![CI](https://github.com/naoki-mrmt/VolleyballScoreApp/actions/workflows/main.yml/badge.svg?branch=develop)](https://github.com/naoki-mrmt/VolleyballScoreApp/actions/workflows/main.yml)|

## Table of Contents
- [Development](#Development)

## Development

### Environmental Information
- Xcode 14.2
- macOS Monterey 12.5+

### Setup
1. Clone the project
    ```shell
    git clone https://github.com/naoki-mrmt/VolleyballScoreApp.git
    cd VolleyballScoreApp
    ```
2. Enable faster builds for Swift projects (Optional)
    ```shell
    make enable-faster-builds
    ```
3. Run ```make setup``` 
  - Setup is complete, workspace will open in Xcode.

### Open Project
- pod install is complete, workspace will open in Xcode. 
```shell
make
```

### Help
```shell
make help

generate-xcworkspace generate xcworkspace
setup                install bundler and bundle install, pod install
gem-install          gem install
bundle-install       bundle install
pod-install          bundle exec pod install
enable-faster-builds Enable faster builds for Swift projects
Xcode-build          Xcode build command for CI
Xcode-clean          delete DerivedData
help                 print this message
```

