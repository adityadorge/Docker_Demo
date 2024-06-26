# syntax=docker/dockerfile:1
FROM python:3
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /app
COPY requirements.txt /app/
RUN pip install -r requirements.txt
EXPOSE 8000
COPY . /app/
CMD ["python","manage.py","runserver"]