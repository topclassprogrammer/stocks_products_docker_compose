FROM python:3.12.3-bookworm

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONBUFFERED 1

RUN mkdir /opt/app_stocks_products

WORKDIR /opt/app_stocks_products

COPY ./requirements.txt .
COPY ./wait-for-it.sh .

RUN pip install -r ./requirements.txt