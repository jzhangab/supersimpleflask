FROM python:3.7

RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app/
RUN pip install -r requirements.txt
COPY . /app/
EXPOSE 8000
ENTRYPOINT [ "python" ]
CMD ["app.py"]