FROM python:3.6

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt

EXPOSE 8081

ENTRYPOINT ["python3"]
CMD ["app.py"]