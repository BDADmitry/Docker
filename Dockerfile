FROM ubuntu:18.04
ARG PASSWORD=defaultValue
ENV env_var_name=${PASSWORD}
LABEL maintainer="deman271@gmail.com"

COPY . .

RUN apt-get update \
    && apt-get install -y apache2 apache2-utils \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && chmod +x ./entrypoint.sh

# WORKDIR /var/www/html

ENTRYPOINT [ "./entrypoint.sh" ]
