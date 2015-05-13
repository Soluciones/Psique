FROM azukiapp/ruby:2.2
MAINTAINER Rankia <rails@rankia.com>

RUN adduser --disabled-password --gecos "" deploy
USER deploy
