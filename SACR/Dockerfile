FROM localhost:5000/python:3.12-slim
WORKDIR /opt/pcteamwebapp
EXPOSE 8080
COPY main.py .
COPY templates templates
RUN pip3 install flask
CMD ["python3", "main.py"]
