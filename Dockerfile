FROM julia
COPY . /tmp/scripts

RUN apt-get update && apt-get install -qq \
    git \
    python3-pip
RUN pip3 install -r /tmp/scripts/requirements.txt

RUN useradd -m -s /bin/bash julia
USER julia
ENV PYTHON /usr/bin/python3
RUN julia --color=yes /tmp/scripts/install.jl

ENTRYPOINT ipython
