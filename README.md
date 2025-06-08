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

## AWS

### AWS CLI

| command | alias |
| --- | --- |
| asgci | aws sts get-caller-identity |

### AWS Config

| command | alias |
| --- | --- |
| awsconf | cat ~/.aws/config |
| awscred | cat ~/.aws/credentials |

### AWS Functions

| function | description |
| --- | --- |
| chprof | Change AWS profile (usage: chprof profile-name) |

## Docker

### Docker Exec

| command | alias |
| --- | --- |
| de | docker exec |
| deit | docker exec -it |

### Docker Image

| command | alias |
| --- | --- |
| di | docker image |

### Docker Container

| command | alias |
| --- | --- |
| dc | docker container |

### Docker Logs

| command | alias |
| --- | --- |
| dl | docker logs |

### Docker Run

| command | alias |
| --- | --- |
| dr | docker run |

## Git

### git add

| command | alias |
| --- | --- |
| ga | git add |

### git branch

| command | alias |
| --- | --- |
| gb | git branch |
| gba | git branch -a |
| gbd | git branch -d |

### git commit

| command | alias |
| --- | --- |
| gcm | git commit -m |
| gcam | git commit --amend -m |

### git diff

| command | alias |
| --- | --- |
| gd | git diff |
| gdc | git diff --cached |

### git fetch

| command | alias |
| --- | --- |
| gfa | git fetch --all |

### git log

| command | alias |
| --- | --- |
| gl | git log |
| gl1 | git log --pretty='format:%C(yellow)%h %C(green)%cd %C(reset)%s %C(red)%d %C(cyan)[%an]' --date=iso |

### git reset

| command | alias |
| --- | --- |
| grhh | git reset --hard HEAD |
| grsh | git reset --soft HEAD |

### git restore

| command | alias |
| --- | --- |
| grs | git restore --staged |

### git remote

| command | alias |
| --- | --- |
| grv | git remote -v |

### git status

| command | alias |
| --- | --- |
| gs | git status |

### git switch

| command | alias |
| --- | --- |
| gsw | git switch |
| gsw- | git switch - |
| gswc | git switch -c |
| gswd | git switch develop |
| gswm | git switch main |
| gswr | git switch release |

### git tag

| command | alias |
| --- | --- |
| gtam | git tag -am |
| gtn | git tag -n |

## Terraform

### Terraform Basic

| command | alias |
| --- | --- |
| tf | terraform |
| tfa | terraform apply |
| tfd | terraform destroy |
| tfi | terraform init |
| tfo | terraform output |
| tfp | terraform plan |
| tft | terraform test |
| tfv | terraform validate |

### Terraform Format

| command | alias |
| --- | --- |
| tff | terraform fmt |
| tffr | terraform fmt -recursive |

### Terraform Init

| command | alias |
| --- | --- |
| tfimc | terraform init -migrate-state |
| tfirc | terraform init -reconfigure |

### Terraform Plan

| command | alias |
| --- | --- |
| tfpnc | terraform plan -no-color > |

### Terraform State

| command | alias |
| --- | --- |
| tfs | terraform state |
| tfsl | terraform state list |
| tfsp | terraform state pull > |
| tfss | terraform state show |

### Terraform Functions

| function | description |
| --- | --- |
| tfirb | terraform init -reconfigure -backend-config (usage: tfirb config-file) |
| tfpv | terraform plan -var-file (usage: tfpv var-file [slack]) |
| tfav | terraform apply -var-file (usage: tfav var-file [slack]) |
| tfdv | terraform destroy -var-file (usage: tfdv var-file [slack]) |
| tfiv | terraform import -var-file (usage: tfiv var-file) |

## GitHub

### GitHub Auth

| command | alias |
| --- | --- |
| gha | gh auth |

### GitHub Browse

| command | alias |
| --- | --- |
| ghb | gh browse |
| ghbs | gh browse --settings |

### GitHub Config

| command | alias |
| --- | --- |
| ghc | gh config |

### GitHub Issue

| command | alias |
| --- | --- |
| ghi | gh issue |

### GitHub PR

| command | alias |
| --- | --- |
| ghpr | gh pr |
| ghprc | gh pr create |
| ghprm | gh pr merge |

### GitHub Release

| command | alias |
| --- | --- |
| ghr | gh release |

### GitHub Repo

| command | alias |
| --- | --- |
| ghrepoc | gh repo create |

### GitHub Secret

| command | alias |
| --- | --- |
| ghs | gh secret |
| ghsd | gh secret delete |
| ghsl | gh secret list |
| ghss | gh secret set |

### GitHub Workflow

| command | alias |
| --- | --- |
| ghwf | gh workflow |
| ghwfr | gh workflow run |

## Google Cloud

### Google Cloud CLI

| command | alias |
| --- | --- |
| gc | gcloud |

### Google Cloud Config

| command | alias |
| --- | --- |
| gcccl | gcloud config configurations list |

## Python

### Python Basic

| command | alias |
| --- | --- |
| py | python |
| py3 | python3 |

### Python Module

| command | alias |
| --- | --- |
| pym | python -m |
| py3m | python3 -m |

## Shell

### Directory Navigation

| command | alias |
| --- | --- |
| .. | cd .. |

### File Operations

| command | alias |
| --- | --- |
| rm | trash-put (if available) |

### Configuration

| command | alias |
| --- | --- |
| sshconf | cat ~/.ssh/config |

## MkDocs

### MkDocs Functions

| function | description |
| --- | --- |
| mds | MkDocs serve with custom port (usage: mds port-number) |