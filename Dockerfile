FROM python:3.9-alpine

RUN pip3 install --upgrade --no-cache pip && \
  pip3 install --no-cache requests PyYAML

COPY ./*.py ./*.yaml /bin/
WORKDIR /bin

CMD ["python3", "-u", "./main.py"]
