# This is Dockerfile for running Flask-Demo 

FROM python:latest

COPY . /app
WORKDIR /app
# RUN pip install -r requirements.txt
# Below is China pip resource specifc
RUN pip install -r requirement.txt -i https://pypi.tuna.tsinghua.edu.cn/simple/
EXPOSE 80
CMD ["python", "app.py"]

