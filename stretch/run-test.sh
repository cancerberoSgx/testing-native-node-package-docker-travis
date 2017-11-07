docker run -ti --rm stretch bash -c '\

printf "\n*** PRINTING VERSIONS : ***\n\n" && \
printf "\n\n*** uname -a ***" && uname -a && \
printf "\n\n*** make -v ***" && make -v && \
printf "\n\n*** python --version ***" && python --version && \
printf "\n\n*** gcc -v ***" && gcc -v && \
printf "\n\n*** g++ -v ***" && g++ -v && \
printf "\n\n*** node -v ***" && node -v  && \
printf "\n\n*** npm -v  ***" && npm -v

'
