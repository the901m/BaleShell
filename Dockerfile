FROM debian:bullseye-slim

RUN apt-get update && \
    apt-get install -y python3 python3-pip git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install pyTelegramBotAPI yt-dlp

WORKDIR /app

COPY . .

ENTRYPOINT ["python3", "app/baleshell.py"]
