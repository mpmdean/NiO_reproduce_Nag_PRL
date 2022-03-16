FROM edrixs/edrixs_interactive@sha256:8c6f7199b9d210a84520b08fbd73577f528640ab8c1ffaa14d13bb108196b81d
RUN pip install lmfit==1.0.3 emcee==3.1.1

ARG NB_USER=rixs
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}

WORKDIR ${HOME}
USER ${USER}
