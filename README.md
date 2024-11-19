## Run a Linux(Ubuntu) container, inside, auto run qume-system-ppc to host a Mac G4.

### Prep
Install Docker;
Download OSX Tiger installed disk image here: https://archive.org/details/mac-osx-tiger-10.4-ppc-installed-qcow2-image
### Run
1. open terminal and go to folder that has Dockerfile and docker-compose_ppc.yml
2. Build linux container image: docker compose -f ./docker-compose_ppc.yml build
3. Start the container, qemu vm will auto start inside the container: docker compose -f ./docker-compose_ppc.yml up
4. Connect to the qemu vm via VNC viewer, e.g. TightVNC viewer