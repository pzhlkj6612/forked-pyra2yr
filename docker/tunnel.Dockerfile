FROM alpine:latest

RUN apk add --update --no-cache python3 py3-pip git
RUN pip3 install --break-system-packages --no-cache --upgrade pip setuptools
RUN pip3 install --break-system-packages 'pycncnettunnel @ git+https://github.com/shmocz/pycncnettunnel.git'
RUN adduser -D user
USER user

CMD pycncnettunnel
