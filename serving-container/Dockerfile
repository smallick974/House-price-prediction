FROM mirror.gcr.io/library/python:3.9
RUN mkdir -p /app/model
WORKDIR /app

COPY requirements.txt /app/requirements.txt
COPY app.py /app/app.py
COPY predict.py /app/predict.py
COPY src /app/src

RUN pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt
RUN pip install --upgrade urllib3

CMD exec gunicorn --bind :$AIP_HTTP_PORT --log-level info --workers 1 --timeout 90 app:app