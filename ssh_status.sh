#!/bin/bash
if systemctl is-active --quiet ssh; then
    echo "SSH service is running."
    systemctl status ssh
else
    echo "SSH service is not running."
fi

