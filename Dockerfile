FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
  python3.10 \
  python3-pip \
  git

# RUN pip3 install PyYAML  
# https://stackoverflow.com/a/75722775
RUN pip3 install PyYAML --break-system-packages

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]