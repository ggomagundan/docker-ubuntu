# Based on ubuntu 18.04
FROM ubuntu:bionic
MAINTAINER Kai Park <ggogun@gmail.com>

# CHANG shell_command sh to bash
RUN ln -sf /bin/bash /bin/sh

# Update source list
RUN apt-get update

# Install basic packages
RUN apt-get install -qq -y git-core curl zlib1g-dev build-essential libssl-dev
RUN apt-get install -qq -y libreadline-dev libyaml-dev libxml2-dev libxslt1-dev libcurl4-openssl-dev
RUN apt-get install -qq -y libffi-dev python-dev
RUN apt-get install -qq -y software-properties-common
RUN apt-get install -qq -y vim cmake vim-gtk
RUN apt-get install -qq -y wget silversearcher-ag
RUN apt-get clean

#GIT CONFIG
#git config --global color.ui true
#git config --global user.name "YOUR NAME"
#git config --global user.email "YOUR@EMAIL.com"
#ssh-keygen -t rsa -C "YOUR@EMAIL.com"
#cat ~/.ssh/id_rsa.pub
#ssh -T git@github.com # GIT Connect Test

# Pathogen
RUN mkdir -p ~/.vim/autoload ~/.vim/bundle
RUN curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# CtrlP
RUN git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim

# Silver search
RUN git clone https://github.com/rking/ag.vim.git ~/.vim/bundle/ag.vim

# YouCompleteMe
#RUN git clone https://github.com/Valloric/YouCompleteMe ~/.vim/bundle/YouCompleteMe
#RUN cd ~/.vim/bundle/YouCompleteMe  && \
#    git submodule update --init --recursive && \
#    ./install.py
##   ./install.py --racer-completer
##   ./install.py --clang-completer
##   ./install.py --gocode-completer


# NERDTree
RUN git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

COPY vimrc /root/.vimrc

# docker build -t kaipark/ubuntu .
# docker run -it kaipark/ubuntu /bin/bash
