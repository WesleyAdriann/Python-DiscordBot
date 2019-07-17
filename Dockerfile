FROM python:3-alpine3.10

COPY ./requirements.txt /requirements.txt

RUN pip3 install -r requirements.txt

ENV DISCORD_BOT_KEY "key"

COPY ./app /app

ENTRYPOINT python3 /app/main.py