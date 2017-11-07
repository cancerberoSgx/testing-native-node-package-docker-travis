IMAGE=jessie-lucyjs
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

sh $DIR/../jessie/run-test.sh

docker run -ti --rm $IMAGE bash -c '\
git clone https://github.com/QuantamHD/LucyJS.git /home/user/workspace && \
cd /home/user/workspace && \
npm install && \
npm test
'
