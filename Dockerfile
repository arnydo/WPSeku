# WPSeku - Wordpress Security Scanner 
# https://github.com/m4ll0k/WPSeku
#
# VERSION 1.0

FROM python:3

WORKDIR /usr/src/app

# Copy source files
COPY . ./
RUN pip install -r requirements.txt

ENTRYPOINT [ "python", "./wpseku.py" ]
CMD [ "--help" ]
