alias asgci='aws sts get-caller-identity'
function chprof() {
  echo "AWS_DEFUALT_PROFILE/AWS_PROFILE: " ${AWS_DEFAULT_PROFILE} / ${AWS_PROFILE}
  export AWS_DEFAULT_PROFILE=$1
  export AWS_PROFILE=$1
  echo $1
}

# Config

alias awsconf='cat ~/.aws/config'
alias awscred='cat ~/.aws/credentials'
