FROM python:3.9-buster

USER root
RUN python -m pip install django gunicorn

WORKDIR /code
RUN django-admin startproject mysite

EXPOSE 8000

WORKDIR /code/mysite
ENTRYPOINT ["gunicorn", "mysite.wsgi", "-b", "0.0.0.0:8000"]
