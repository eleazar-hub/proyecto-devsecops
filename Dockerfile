FROM jenkins/jenkins:lts
WORKDIR /app
COPY app.py .
CMD ["cat", "app.py"]
