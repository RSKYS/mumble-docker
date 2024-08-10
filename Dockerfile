FROM mumblevoip/mumble-server:v1.5.634-0

ENV MUMBLE_ACCEPT_UNKNOWN_SETTINGS=true \
    MUMBLE_SUPERUSER_PASSWORD=test123 \
    MUMBLE_VERBOSE=false \
    MUMBLE_CUSTOM_CONFIG_FILE=/data/mumble_server_config.ini

#COPY ./data/mumble_server_config.ini /data/mumble_server_config.ini
