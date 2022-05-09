FROM rocker/rstudio:4.2.0

LABEL org.opencontainers.image.authors="Jake Hughey <jakejhughey@gmail.com>" \
      org.opencontainers.image.source="https://github.com/hugheylab/stocker"

COPY install_system_deps.sh /stocker_scripts/install_system_deps.sh
RUN /stocker_scripts/install_system_deps.sh
RUN usermod -aG sudo rstudio

USER rstudio
WORKDIR /home/rstudio

COPY install_miniconda.sh /stocker_scripts/install_miniconda.sh
RUN /stocker_scripts/install_miniconda.sh

CMD /bin/bash
