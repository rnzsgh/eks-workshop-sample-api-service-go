FROM public.ecr.aws/docker/library/python:3

ADD create.py /

RUN pip install Flask
RUN pip install boto3

EXPOSE 8080

ENTRYPOINT ["python", "create.py"]
