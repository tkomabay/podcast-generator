FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3.12 \
    pipx \
    git

RUN pipx install pyyaml

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
