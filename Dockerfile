FROM pveierland/tensorflow-gpu-py3-opencv3

RUN apt-get update
RUN apt-get install -y git build-essential

RUN git clone https://github.com/thtrieu/darkflow.git /darkflow
RUN pip install Cython
RUN	pip install /darkflow
RUN	rm -rf /darkflow

RUN mkdir /log