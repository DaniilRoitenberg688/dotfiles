#!/bin/bash

if ip link show tun0 &>/dev/null 2>&1; then
    echo "%{F#a3be8c}%{F-}"
else
    echo "%{F#bf616a}%{F-}"
fi
