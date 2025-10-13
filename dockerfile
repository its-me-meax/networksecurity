FROM python:3.10-slim-bookworm
WORKDIR /app
COPY . /app

RUN apt update -y && apt install awscli -y

RUN apt update -y && apt install -r rerquirements.txt

CMD ["python3","app.py"]

