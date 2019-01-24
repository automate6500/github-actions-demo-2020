# use a python image
FROM python:3.7

# set the working directory in the container to /app
WORKDIR /app

# add the current directory to the container as /app
COPY app.py data.json /app/

# pip install flask
RUN pip install flask

# expose the default flask port
EXPOSE 5000

# execute the Flask app
CMD ["python", "app.py"]
