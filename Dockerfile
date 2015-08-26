FROM ruby:2.2.3
MAINTAINER Adam Becker

RUN gem install slanger
ADD init_slanger.sh /home/init_slanger.sh
CMD ["/home/init_slanger.sh"]
