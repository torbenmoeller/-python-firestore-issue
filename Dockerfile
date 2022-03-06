FROM python:slim-buster

# Prepare workspace
RUN mkdir -p /usr/src/app2
WORKDIR /usr/src/app

# Install Python dependencies
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY app /usr/src/app
# Define entry point on container start
WORKDIR /usr/src
COPY docker-entrypoint.sh /usr/src/docker-entrypoint.sh
RUN ["chmod", "+x", "/usr/src/docker-entrypoint.sh"]
ENTRYPOINT ["./docker-entrypoint.sh"]
