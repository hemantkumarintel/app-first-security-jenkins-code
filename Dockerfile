FROM python:alpine3.7
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
RUN apk add libstdc++
EXPOSE 5002
EXPOSE 22
CMD python ./app.py
