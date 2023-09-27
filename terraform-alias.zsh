alias tfa='terraform apply'
alias tfd='terraform destroy'
alias tff='terraform fmt'
alias tffr='terraform fmt -recursive'
alias tfi='terraform init'
alias tfp='terraform plan'
alias tfs='terraform state'
alias tfsl='terraform state list'
alias tfss='terraform state show'
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

