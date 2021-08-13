 # syntax=docker/dockerfile:1
FROM debian

RUN apt update 
RUN apt-get install -y build-essential autoconf bison git libreadline-dev libssl-dev libyaml-dev libncurses-dev libffi-dev tk-dev libgdbm-dev
RUN apt-get install -y ruby
RUN mkdir -p  ~/local/ruby
RUN echo 'PATH=$HOME/local/ruby/bin:$PATH' >> ~/.profile
RUN mkdir ~/src
RUN cd ~/src
COPY ruby.sh .
RUN chmod +x ruby.sh
RUN ./ruby.sh
