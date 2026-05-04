FROM python:3.9-slim

RUN apt-get clean \
    && apt-get -y update

RUN apt-get -y install \
    nginx \
    python3-dev \
    build-essential\
    nfs-common

COPY . .

RUN pip install -r requirements.txt

EXPOSE 5000

CMD [ "python3", "main.py" ]
