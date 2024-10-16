FROM ubuntu:latest
MAINTAINER Tuan Thai "tuanthai@example.com"
RUN apt update
RUN apt install -y python3-pip python3-dev build-essential python3-venv
WORKDIR /app
RUN python3 -m venv venv
ENV PATH="/app/venv/bin:$PATH"
COPY requirements.txt requirements.txt
RUN . venv/bin/activate && pip install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["flask_docker.py"]



