FROM public.ecr.aws/lambda/python:3.12

WORKDIR /microservice
COPY ./microservice ./
COPY ./requirements.txt ./
RUN pip install --no-cache-dir  --upgrade -r ./requirements.txt
EXPOSE 8080
CMD ["main.py"]
ENTRYPOINT ["python"]
