FROM python:3.11.1-alpine3.17

# Set environment varibles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /code/

# Install dependencies
COPY . /code/

# Install sqlite3
RUN apk update && apk upgrade
RUN apk add --no-cache sqlite

RUN pip install poetry
RUN poetry install
