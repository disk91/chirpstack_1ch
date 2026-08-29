# chirpstack_1ch

Chirpstack version that supports a single-channel gateway based on the 
[Semtech One Channel Hub project](https://github.com/Lora-net/one_channel_hub), 
enabling devices to operate in single channel mode.

## Setup

```bash
git clone https://github.com/disk91/chirpstack_1ch.git
cd chirpstack_1ch
make install
```

## run

1. Start Chirpstack with docker-compose:
    ```bash
    make start
    ```
2. Connect to Chirpstack web interface with a ssh port forward:
    ```bash
    ssh -L 8180:localhost:8180 user@your-server
    ```
3. Open your browser and go to http://localhost:8180 and login with the default credentials:
    - username: admin
    - password: admin
