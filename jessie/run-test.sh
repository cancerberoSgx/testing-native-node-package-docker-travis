docker run -ti --rm lucyjs-jessie bash -c '\

printf "\n*** PRINTING VERSIONS : ***\n\n" && \
sleep 1 && \
printf "\n\n*** uname -a ***" && uname -a && \
printf "\n\n*** make -v ***" && make -v && \
printf "\n\n*** python --version ***" && python --version && \
printf "\n\n*** gcc -v ***" && gcc -v && \
printf "\n\n*** g++ -v ***" && g++ -v && \
printf "\n\n*** node -v ***" && node -v  && \
printf "\n\n*** npm -v  ***" && npm -v && \
printf "\n\n*** NOW INSTALLING : ***\n\n" && \
sleep 2 && \

cd ~/workspace && \
npm install && \
npm test
'
