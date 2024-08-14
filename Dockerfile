# syntax=docker/dockerfile:1

FROM python:3.11-slim-buster

WORKDIR /code

ENV PYTHONDONTWRITEBYTECODE=1

COPY requirements.txt .

RUN pip3 install --no-compile --no-cache-dir --upgrade pip
RUN pip3 install --no-compile --no-cache-dir -r requirements.txt 

COPY . .

EXPOSE 50505

ENTRYPOINT ["gunicorn", "app:app"]