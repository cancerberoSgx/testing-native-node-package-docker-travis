IMAGE=buster-lucyjs
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [[ "$(docker images -q $IMAGE 2> /dev/null)" == "" ]]; then
    #if image not exists
    sh $DIR/../buster-lucyjs/build-image.sh
fi

sh $DIR/../buster/run-test.sh

docker run -ti --rm $IMAGE bash -c '\
git clone https://github.com/QuantamHD/LucyJS.git /home/user/workspace && \
cd /home/user/workspace && \
npm install && \
npm test && \
echo "npm test finish OK :)" \
'
