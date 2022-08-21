#!/usr/bin/with-contenv bashio
# ==============================================================================
# Home Assistant Community Add-on: TVHeadend
# Executes user customizations on startup
# ==============================================================================

# Ensure directory exists
if ! bashio::fs.directory_exists '/config/tvheadend/'; then
    bashio::log.info "Creating default configuration directory at /config/tvheadend/"
    mkdir -p /config/tvheadend/recordings
    timeout 20s /usr/bin/tvheadend --firstrun -u root -g root -c /config/tvheadend
fi