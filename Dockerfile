FROM rocker/rstudio:4.1.2

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

# docker run -it -e PASSWORD=<ultra-sweet-pw> ghcr.io/hugheylab/stocker bash
# docker exec -it <container-id> bash