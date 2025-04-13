# ZSH エイリアス管理ツール

このリポジトリは、zshシェル用のエイリアスを効率的に管理するためのツールです。複数のエイリアスファイルを整理し、必要に応じて読み込むことができます。

## 概要

* `~/.zsh/aliases` ディレクトリ内の `.zsh` ファイルを自動的に読み込む
* エイリアスを機能ごとに分割して管理可能
* SlackウェブフックURLなどの機密情報を安全に管理

## インストール方法

1. このリポジトリをクローン
```bash
git clone https://github.com/juliar13/aliases.git ~/.zsh/aliases
```

2. `~/.zprofile` または `~/.zshrc` に以下のコードを追加

```bash
# 環境変数の設定（必要に応じて）
export SLACK_WEBHOOK_URL=xxx  # 実際のURLに置き換えてください

# 分割ファイルの読み込み設定
SHELL_ALIAS_HOME="${HOME}/.zsh/aliases"

if [ -d $SHELL_ALIAS_HOME -a -r $SHELL_ALIAS_HOME -a \
     -x $SHELL_ALIAS_HOME ]; then
    for i in $SHELL_ALIAS_HOME/*; do
        [[ ${i##*/} = *.zsh ]] &&
            [ \( -f $i -o -h $i \) -a -r $i ] && . $i
    done
fi
```

3. シェルを再起動するか、設定を再読み込み
```bash
source ~/.zprofile  # または ~/.zshrc
```

## 使用方法

### エイリアスファイルの作成

機能ごとに `.zsh` ファイルを作成します。例えば：

```bash
# ~/.zsh/aliases/git.zsh
alias g='git'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
```

### SlackウェブフックURLの設定

Slackへの通知機能を使用する場合は、`~/.zprofile` に以下を設定します：

```bash
export SLACK_WEBHOOK_URL=https://hooks.slack.com/services/xxx/yyy/zzz
```

## カスタマイズ

必要に応じて以下のようなエイリアスファイルを作成できます：

- `git.zsh` - Git操作用エイリアス
- `docker.zsh` - Docker操作用エイリアス
- `network.zsh` - ネットワーク操作用エイリアス
- `system.zsh` - システム操作用エイリアス

## トラブルシューティング

### エイリアスが読み込まれない場合

以下を確認してください：

1. ファイル権限が適切か
```bash
chmod 755 ~/.zsh/aliases
chmod 644 ~/.zsh/aliases/*.zsh
```

2. ファイル名が `.zsh` で終わっているか
3. `~/.zprofile` または `~/.zshrc` に読み込みコードが正しく記述されているか

## 貢献方法

1. このリポジトリをフォーク
2. 新しいブランチを作成 (`git checkout -b feature/amazing-aliases`)
3. 変更をコミット (`git commit -am 'Add some amazing aliases'`)
4. ブランチをプッシュ (`git push origin feature/amazing-aliases`)
5. Pull Requestを作成

## ライセンス

MITライセンス

---

# ZSH Alias Management Tool

This repository provides tools for efficiently managing aliases for the ZSH shell. You can organize multiple alias files and load them as needed.

## Overview

* Automatically loads `.zsh` files in the `~/.zsh/aliases` directory
* Manage aliases separately by function
* Securely manage sensitive information such as Slack webhook URLs

## Installation

1. Clone this repository
```bash
git clone https://github.com/juliar13/aliases.git ~/.zsh/aliases
```

2. Add the following code to your `~/.zprofile` or `~/.zshrc`

```bash
# Environment variables (if needed)
export SLACK_WEBHOOK_URL=xxx  # Replace with your actual URL

# Split file loading configuration
SHELL_ALIAS_HOME="${HOME}/.zsh/aliases"

if [ -d $SHELL_ALIAS_HOME -a -r $SHELL_ALIAS_HOME -a \
     -x $SHELL_ALIAS_HOME ]; then
    for i in $SHELL_ALIAS_HOME/*; do
        [[ ${i##*/} = *.zsh ]] &&
            [ \( -f $i -o -h $i \) -a -r $i ] && . $i
    done
fi
```

3. Restart your shell or reload the configuration
```bash
source ~/.zprofile  # or ~/.zshrc
```

## Usage

### Creating Alias Files

Create `.zsh` files for each function. For example:

```bash
# ~/.zsh/aliases/git.zsh
alias g='git'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
```

### Setting Slack Webhook URL

If you use the Slack notification feature, set the following in your `~/.zprofile`:

```bash
export SLACK_WEBHOOK_URL=https://hooks.slack.com/services/xxx/yyy/zzz
```

## Customization

You can create alias files such as:

- `git.zsh` - Aliases for Git operations
- `docker.zsh` - Aliases for Docker operations
- `network.zsh` - Aliases for network operations
- `system.zsh` - Aliases for system operations

## Troubleshooting

### If aliases are not loaded

Check the following:

1. File permissions are appropriate
```bash
chmod 755 ~/.zsh/aliases
chmod 644 ~/.zsh/aliases/*.zsh
```

2. The file name ends with `.zsh`
3. The loading code is correctly written in `~/.zprofile` or `~/.zshrc`

## How to Contribute

1. Fork this repository
2. Create a new branch (`git checkout -b feature/amazing-aliases`)
3. Commit your changes (`git commit -am 'Add some amazing aliases'`)
4. Push to the branch (`git push origin feature/amazing-aliases`)
5. Create a Pull Request

## License

MIT License