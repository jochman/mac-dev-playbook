#!/bin/bash
set -e

xcode-select --install && \

pip3 install --upgrade pip && pip3 install ansible && \

git clone https://github.com/jochman/mac-dev-playbook.git ~/.mac-dev-playbook && cd ~/.mac-dev-playbook && \

export PATH=$PATH:$HOME/Library/Python/3.8/bin && \

ansible-galaxy install -r requirements.yml && \

ansible-playbook main.yml --ask-become-pass