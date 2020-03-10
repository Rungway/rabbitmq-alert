FROM python:2-alpine

LABEL maintainer="milonas.ko@gmail.com"

RUN pip install --no-cache-dir rabbitmq-alert

RUN mkdir /var/log/rabbitmq-alert && \
    ln -sf /dev/stdout /var/log/rabbitmq-alert/rabbitmq-alert.log

COPY ./rabbitmqalert/config/defaults.ini /usr/local/lib/python2.7/site-packages/rabbitmqalert/config/defaults.ini

CMD ["rabbitmq-alert"]
