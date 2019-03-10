FROM python:2.7.16-alpine

RUN pip install pyserial esptool

RUN mkdir /app

ADD flash /app/flash
RUN chmod +x /app/flash

WORKDIR /app

ENTRYPOINT [ "/app/flash" ]

CMD [ "/data/firmware.zip" ]
