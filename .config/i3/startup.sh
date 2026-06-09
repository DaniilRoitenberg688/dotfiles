#!/bin/bash

killall zen
killall telegram-desktop
killall happ


zen
sleep 1
telegram-desktop
sleep 1
happ &
