FROM public.ecr.aws/docker/library/python:3

COPY create.py /
COPY /templates/. /templates

RUN pip install Flask
RUN pip install boto3

EXPOSE 8080

ENTRYPOINT ["python", "create.py"]
