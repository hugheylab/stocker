# stocker

## Installation

1. Install docker. On macOS or Windows, see [here](https://docs.docker.com/engine/install). On Ubuntu (adapted from [here](https://docs.docker.com/engine/install/ubuntu) and [here](https://docs.docker.com/engine/install/linux-postinstall)):

    ```sh
    wget https://raw.githubusercontent.com/hugheylab/stocker/main/install_docker.sh
    sh install_docker.sh
    ```

    On Linux, then restart the system (e.g., `sudo reboot`) and log back in.

2. Pull the latest stocker image.

    ```sh
    docker pull ghcr.io/hugheylab/stocker
    ```

## Usage

For details on how to use the docker command-line interface, refer to the [documentation](https://docs.docker.com/engine/reference/run/). Below are a few examples.

- To create and start a container in interactive mode, and bind mount a directory on the host to a directory in the container (remember to set a password):

    ```sh
    mkdir -p project
    docker run -it --name stocker --mount type=bind,src=/home/ubuntu/project,dst=/home/rstudio/project -e PASSWORD=<ultra-sweet-pw> ghcr.io/hugheylab/stocker bash
    ```

- To reconnect to a stopped container:

    ```sh
    docker start stocker
    docker exec -it stocker bash
    ```

- To run RStudio Server within a container:

  1. On AWS EC2, the instance must be associated with a security group that allows incoming TCP traffic on port 8787. See how to create such a security group [here](https://www.loom.com/share/e729754c92cb43ffa79457d6c8ff53f9).
   
  2. Start the container.
      ```sh
      docker run --name stocker -p 8787:8787 -u root -e PASSWORD=<ultra-sweet-pw> ghcr.io/hugheylab/stocker /init
      ```

  3. In your browser, visit localhost:8787 (if running the container on your local machine) or \<public-ipv4-address\>:8787 (if running the container in the cloud).
  
  4. At the prompt, enter username "rstudio" and your ultra-sweet password.
