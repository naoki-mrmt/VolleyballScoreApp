# VolleyballScoreApp
English / [日本語](./README-ja.md)

## Table of Contents
- [Development](#Development)

## Development

### Environmental Information
- Xcode 14.2
- macOS Monterey 12.5+

### Setup
1. Clone the project
    ```shell
    $ git clone https://github.com/naoki-mrmt/VolleyballScoreApp.git
    $ cd VolleyballScoreApp
    ```
2. Enable faster builds for Swift projects (Optional)
    ```shell
    $ defaults write com.apple.dt.XCBuild EnableSwiftBuildSystemIntegration 1
    ```
3. install CocoaPods
    ```shell
    $ make setup
    ```
4. Generate xcworkspace and Open Project in Xcode
    ```shell
    $ make
    ```

### Help
`make help`

```shell
$ make help

generate             generate xcworkspace
open                 Open workspace in Xcode
setup                setup
help                 print this message
```

