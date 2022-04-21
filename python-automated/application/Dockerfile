FROM python:3.9-buster

USER root

# assumes python-libraries.tar.gz exists in build context
COPY python-libraries.tar.gz /tmp/repo/
WORKDIR /tmp/repo
RUN tar xvf python-libraries.tar.gz -C /tmp/repo/
RUN python -m pip install --no-index --find-links /tmp/repo/python-libraries/ django gunicorn

WORKDIR /code
RUN django-admin startproject mysite

EXPOSE 8000

WORKDIR /code/mysite
ENTRYPOINT ["gunicorn", "mysite.wsgi", "-b", "0.0.0.0:8000"]
