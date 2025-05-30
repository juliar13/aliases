alias tf='terraform'

alias tfa='terraform apply'

alias tfd='terraform destroy'

alias tff='terraform fmt'
alias tffr='terraform fmt -recursive'

# terraform init
alias tfi='terraform init'
alias tfimc='terraform init -migrate-state'
alias tfirc='terraform init -reconfigure'

alias tfo='terraform output'

# terraform plan
alias tfp='terraform plan'
alias tfpnc='terraform plan -no-color >'

# terraform state
alias tfs='terraform state'
alias tfsl='terraform state list'
alias tfsp='terraform state pull >'
alias tfss='terraform state show'

# terraform test
alias tft='terraform test'

alias tfv='terraform validate'

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

