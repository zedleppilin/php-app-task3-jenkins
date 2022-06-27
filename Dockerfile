FROM python:alpine3.16
RUN pip3 install flask
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN /usr/local/bin/python -m pip install --upgrade pip
CMD ["python", "app.py"]
