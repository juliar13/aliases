# Aliases Collection 🛠️

様々な開発ツールのエイリアス集です。

## セットアップ 🚀

以下のコードを`~/.zprofile`などに記載すると、`~/.zsh`ディレクトリにある.zshファイルを読み込むようになります。
SlackへのWebhook URLはgitで管理しないため、`~/.zprofile`などに入れておいてください。

```bash
export SLACK_WEBHOOK_URL=xxx

############################
# 分割ファイルの読み込み
############################

SHELL_ALIAS_HOME="${HOME}/.zsh/aliases"

if [ -d $SHELL_ALIAS_HOME -a -r $SHELL_ALIAS_HOME -a \
     -x $SHELL_ALIAS_HOME ]; then
    for i in $SHELL_ALIAS_HOME/*; do
        [[ ${i##*/} = *.zsh ]] &&
            [ \( -f $i -o -h $i \) -a -r $i ] && . $i
        echo $i
    done
fi
```

## 利用可能なエイリアス 📝

### Pre-commit ✨
- `pcra` - `pre-commit run -a` のショートカット（全ファイルに対してpre-commitフックを実行）

### Shell Operations 💻
- `..` - `cd ..` のショートカット（一つ上のディレクトリに移動）
- `rm` - `trash-put`（ゴミ箱に移動、trash-putがインストールされている場合のみ）
- `sshconf` - SSH設定ファイルの内容を表示

### Terraform 🏗️
terraform関連の様々なエイリアスが利用可能です（terraformがインストールされている場合のみ）

### その他のツール 🔧
- AWS CLI
- Docker
- Git
- GitHub CLI
- Google Cloud CLI
- MkDocs
- Python

各エイリアスは対応するコマンドがインストールされている場合のみ有効になります。
