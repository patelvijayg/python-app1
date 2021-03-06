FROM python:3.7-alpine

# Set the application directory
WORKDIR /app

# Install our requirements.txt
#ADD requirements.txt /app/requirements.txt
#RUN pip install -r requirements.txt

RUN pip install flask 
#RUN pip install pyopenssl


ADD . /

EXPOSE 8080

CMD [ "python", "/app.py" ]

#docker build --rm -t pytest1 .
#docker run -it --name=pytest -p 8080:8080  pytest1