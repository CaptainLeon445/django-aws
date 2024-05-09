FROM python:3.10.14-alpine3.19

ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip
WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

COPY execute.sh /app/execute.sh

RUN chmod +x ./execute.sh

EXPOSE 8000

CMD ["./execute.sh"]