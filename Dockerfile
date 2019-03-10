FROM python:2.7.16-alpine

RUN pip install pyserial esptool

RUN mkdir /app

ADD flash /app/flash

WORKDIR /app

ENTRYPOINT [ "flash" ]

CMD [ "/data/firmware.zip" ]
