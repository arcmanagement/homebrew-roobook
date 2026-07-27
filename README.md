# RooBook Homebrew Tap

[RooBook](https://roobook.app/) を Homebrew でインストールするための Tap です。

## 動作環境

- Apple Silicon 搭載 Mac
- macOS 15 Sequoia 以降
- [Homebrew](https://brew.sh/)

依存する Node.js は、RooBook のインストール時に Homebrew が自動でインストールします。

## インストール

次のコマンドだけでインストールできます。

```sh
brew install --cask arcmanagement/roobook/roobook
```

Tap の追加とインストールを分ける場合は、次のコマンドを実行します。

```sh
brew tap arcmanagement/roobook
brew install --cask roobook
```

## 起動

アプリケーションフォルダから RooBook を開くか、次のコマンドを実行します。

```sh
open -a RooBook
```

コマンドライン版も利用できます。

```sh
roobook --help
```

## アップデート

```sh
brew update
brew upgrade --cask roobook
```

## アンインストール

```sh
brew uninstall --cask roobook
```

設定やキャッシュなどの関連データも削除する場合は、`--zap` を付けます。

```sh
brew uninstall --cask --zap roobook
```
