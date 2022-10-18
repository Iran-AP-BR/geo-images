FROM python:3.8

ARG NAME=photo-metadata

RUN apt-get update -y && \
    apt-get install tini -y

RUN echo "PS1='\u @ \e[33m${NAME}\e[m \e[36m\w \$\e[m '" >> /etc/bash.bashrc

WORKDIR /root

COPY ./requirements.txt .
RUN python -m pip install --upgrade pip && \
    pip install -r requirements.txt

COPY ./user-settings/ ./.jupyter/lab/user-settings/

ENTRYPOINT ["tini", "--"]

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", \
     "--ServerApp.token=''","--ServerApp.password=''", "--allow-root"]
