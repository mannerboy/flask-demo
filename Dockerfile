FROM ubuntu
LABEL maintainer="worldzhang<16778301@qq.com>"
ADD ./apt-source.list /etc/apt/sources.list
RUN apt-get -y update && apt-get -y install python python-pip && pip install -i https://mirrors.aliyun.com/pypi/simple/ flask
ADD ./app.py /app/
WORKDIR /app
EXPOSE 5000
ENTRYPOINT ["python","app.py"]

