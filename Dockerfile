# This is Dockerfile for running Flask-Demo 

FROM python:latest

COPY . /app
WORKDIR /app
# RUN pip install -r requirements.txt
# Below is China specific
RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple -r requirements.txt
EXPOSE 80
CMD ["python", "app.py"]

