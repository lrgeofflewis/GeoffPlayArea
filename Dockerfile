FROM orchardup/python:2.7
ADD . /code
WORKDIR /code
RUN pip install -r requirements.txt
ENV PYTHONUNBUFFERED 1
EXPOSE 5000