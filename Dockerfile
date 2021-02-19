FROM python:3.5

COPY ./ /app/
WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT ["python", "/app/manage.py", "runserver", "0.0.0.0:8000"]
EXPOSE 8000
