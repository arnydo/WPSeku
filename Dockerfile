# WPSeku - Wordpress Security Scanner 
# https://github.com/m4ll0k/WPSeku
#
# VERSION 1.0

FROM python:3-alpine

WORKDIR /usr/src/app

# Copy source files
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .

ENTRYPOINT [ "python", "./wpseku.py" ]
CMD [ "--help" ]
