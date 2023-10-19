FROM python:3

ADD create.py /

RUN pip install Flask
RUN pip install boto3


ENTRYPOINT python create.py
