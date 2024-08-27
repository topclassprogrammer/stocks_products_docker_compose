FROM python:3.12.3-alpine3.18

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONBUFFERED 1

RUN mkdir /opt/app_stocks_products

WORKDIR /opt/app_stocks_products

COPY ./requirements.txt .

RUN pip install -r ./requirements.txt

CMD ["./start.sh"]