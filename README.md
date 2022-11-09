以下のコードを`~/.zprofile`などに記載すると、`~/.zsh`ディレクトリにある.zshファイルを読み込むようになる
SlackへのWebhook URLはgitで管理しないため、`~/.zprofile`などに入れておく


```~/.zprofile

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
```
