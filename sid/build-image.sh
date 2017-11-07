IMAGE=sid
printf "***\n***\nThis will build a docker image called \"$IMAGE\" that you can then run with \"sh run-test.sh\" or \"sh run-prompt.sh\"***\n***\n"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker image build -t $IMAGE $DIR
