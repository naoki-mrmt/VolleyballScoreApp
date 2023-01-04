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
    defaults write com.apple.dt.XCBuild EnableSwiftBuildSystemIntegration 1
    ```
3. Run ```make setup``` 
  - Setup is complete, workspace will open in Xcode.

### Open Project
```shell
make
```

### Help
```shell
make help

generate-xcworkspace generate xcworkspace
setup                setup
gem-install          gem install
bundle-install       bundle install
pod-install          bundle exec pod install
open                 Open workspace in Xcode
Xcode-build          Xcode build command for CI
help                 print this message
```

