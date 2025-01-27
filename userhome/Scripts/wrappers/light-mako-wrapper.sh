#!/bin/bash

light $1 $2

notify-send "Backlight set to "$(light -G)
