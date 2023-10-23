FROM public.ecr.aws/docker/library/python:3

WORKDIR /opt
COPY . /opt/
RUN pip install -r requirements.txt

EXPOSE 8080

ENTRYPOINT ["python", "create.py"]
