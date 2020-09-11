FROM jupyter/datascience-notebook

USER root

RUN apt-get -y update && \
    apt-get install -y vim cron tzdata && \
    # 日本時間に変更
    ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    /etc/init.d/cron restart
