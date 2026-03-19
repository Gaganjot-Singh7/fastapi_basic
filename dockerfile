
FROM python:3.14


WORKDIR /py


COPY requirements.txt requirements.txt


RUN pip install --no-cache-dir --upgrade -r requirements.txt


COPY . .


CMD ["fastapi", "run", "main.py", "--port", "8000", "--host", "0.0.0.0"]