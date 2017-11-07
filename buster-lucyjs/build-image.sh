IMAGE=buster-lucyjs
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [[ "$(docker images -q buster 2> /dev/null)" == "" ]]; then
    #if image not exists
    sh $DIR/../buster/build-image.sh
fi

printf "***\n***\nThis will build a docker image called \"$IMAGE\" that you can then run with \"sh run-test.sh\" or \"sh run-prompt.sh\"***\n***\n"
docker image build -t $IMAGE $DIR
