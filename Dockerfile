FROM tiangolo/uwsgi-nginx-flask

COPY requirements.txt /app/

RUN pip install -r requirements.txt

COPY ./ /app/

ENV STATIC_PATH /app/devsite/static

WORKDIR /app/devsite