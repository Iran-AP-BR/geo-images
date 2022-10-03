FROM python:3.8

ARG NAME=pictures-metadata

RUN apt-get update -y && \
    apt-get install tini -y

RUN  echo "PS1='\u @ \e[33m${NAME}\e[m \e[36m\w \$\e[m '" >> /etc/bash.bashrc

RUN python -m pip install --upgrade pip && \
    pip install jupyterlab pandas numpy pyproj piexif simplekml pillow pillow_heif

WORKDIR /home/${NAME}

COPY ./user-settings/* /root/.jupyter/lab/user-settings/@jupyterlab

ENTRYPOINT ["tini", "--"]

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", \
     "--NotebookApp.token=''","--NotebookApp.password=''", "--allow-root"]
