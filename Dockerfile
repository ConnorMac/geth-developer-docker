FROM ethereum/client-go
MAINTAINER Connor Macdougall

RUN apk add --update nodejs nodejs-npm
RUN npm install -g gethdev
COPY gethdev.js /usr/gethdev.js
CMD geth --shh -dev & gethdev --shh -rpc --rpccorsdomain '*' --rpcaddr '0.0.0.0' js /usr/gethdev.js
ENTRYPOINT []
