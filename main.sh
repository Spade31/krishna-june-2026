#!/bin/bash
# Load your library file
source ./mylib.sh

log_info "The system scan has started successfully."

# Simulating a warning (like high disk space or a low battery)
BATTERY_LEVEL=15

if [[ $BATTERY_LEVEL -lt 20 ]]; then
    log_warn "Battery is low ($BATTERY_LEVEL%)! Please plug in your charger."
fi

log_info "System scan finished safely."
