alias tfa='terraform apply'
alias tfi='terraform init'
alias tfs='terraform show'
alias tfp='terraform plan'
alias tfd='terraform destroy'
alias tfv='terraform validate'

function tfw() {
  terraform workspace $@
}

function tfirb() {
  terraform init -reconfigure -backend-config=$1
}

function tfpv() {
  terraform plan -var-file=$1

  if [ $2 = "slack" ]; then
    curl -X POST -H 'Content-type: application/json' \
      --data '{"text": "tfpv end"}' \
      $SLACK_WEBHOOK_URL
  fi
}

function tfav() {
  terraform apply -var-file=$1
  if [ $2 = "slack" ]; then
    curl -X POST -H 'Content-type: application/json' \
      --data '{"text": "tfav end"}' \
      $SLACK_WEBHOOK_URL
  fi
}

function tfdv() {
  terraform destroy -var-file=$1
  if [ $2 = "slack" ]; then
    curl -X POST -H 'Content-type: application/json' \
      --data '{"text": "tfdv end"}' \
      $SLACK_WEBHOOK_URL
  fi
}

function tfiv() {
  terraform import -var-file=$@
}
