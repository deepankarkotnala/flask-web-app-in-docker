FROM python:3.6
COPY . /app
WORKDIR /app
RUN pip install -r Requirements.txt
EXPOSE 5000
CMD ["python","app.py"]