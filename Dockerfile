FROM python:latest
RUN mkdir /app
COPY Projet_python.tar.gz /app
WORKDIR /app
RUN  tar xzf /app/Projet_python.tar.gz
WORKDIR /app/Projet_python 
RUN pip install -r requirements.txt
CMD pytest test_routes.py && python app.py
