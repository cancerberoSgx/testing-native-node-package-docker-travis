IMAGE=stretch-lucyjs
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [[ "$(docker images -q stretch 2> /dev/null)" == "" ]]; then
    #if stretch image not exists
    sh $DIR/../stretch/build-image.sh
fi

printf "***\n***\nThis will build a docker image called \"$IMAGE\" that you can then run with \"sh run-test.sh\" or \"sh run-prompt.sh\"***\n***\n"
docker image build -t $IMAGE $DIR
