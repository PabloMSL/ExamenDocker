FROM python:3.8

WORKDIR /app

RUN pip install --no-cache-dir --upgrade pip 

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

EXPOSE 5050

ENV PYTHONUNBUFFERED=1

CMD ["python", "sample_app.py"]