FROM library/python:3.12

WORKDIR /app
COPY requirements.lock ./

RUN pip install --no-cache-dir -r requirements.lock

COPY src .

CMD ["python", "./repro/main.py" ]