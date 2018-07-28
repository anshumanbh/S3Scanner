FROM python:2.7.15-alpine3.8
RUN apk add gcc build-base libxslt-dev jpeg-dev zlib-dev

ADD requirements.txt s3scanner.py s3utils.py sites.txt test_scanner.py /root/s3scanner/

WORKDIR /root/s3scanner
RUN pip install -r requirements.txt

ENTRYPOINT [ "python", "s3scanner.py" ]
