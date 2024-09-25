FROM python:3.9-alpine

ENV FLASK_APP=hello.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_CONFIG=production

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD ["flask", "run"]