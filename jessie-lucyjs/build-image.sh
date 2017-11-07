IMAGE=jessie-lucyjs
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [[ "$(docker images -q jessie 2> /dev/null)" == "" ]]; then
    #if jessie image not exists
    sh $DIR/../jessie/build-image.sh
fi

printf "***\n***\nThis will build a docker image called \"$IMAGE\" that you can then run with \"sh run-test.sh\" or \"sh run-prompt.sh\"***\n***\n"
docker image build -t $IMAGE $DIR
