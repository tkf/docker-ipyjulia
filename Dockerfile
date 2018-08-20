FROM python
COPY . /tmp/scripts

RUN pip install -r /tmp/scripts/requirements.txt

RUN useradd -m -s /bin/bash julia
USER julia

# Install julia at /home/julia/julia
RUN /tmp/scripts/install-julia
ENV PATH "/home/julia/julia/bin:$PATH"

ENV PYTHON /usr/local/bin/python
RUN julia --color=yes /tmp/scripts/install.jl

ENTRYPOINT ipython
