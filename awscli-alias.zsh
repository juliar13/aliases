# AWS CLI
alias asgci='aws sts get-caller-identity'

# AWS Functions
function chprof() {
  echo "Before) AWS_DEFUALT_PROFILE/AWS_PROFILE:" ${AWS_DEFAULT_PROFILE} / ${AWS_PROFILE}
  export AWS_DEFAULT_PROFILE=$1
  export AWS_PROFILE=$1
  echo "After ) AWS_DEFUALT_PROFILE/AWS_PROFILE:" $1 / $1
  asgci
}
