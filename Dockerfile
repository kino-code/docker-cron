FROM jupyter/datascience-notebook

USER root

COPY root /var/spool/cron/crontabs/

RUN apt-get -y update && \
    apt-get install -y vim cron tzdata && \
    # 日本時間に変更
    ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    chmod 600 /var/spool/cron/crontabs/root && \
    /etc/init.d/cron restart
