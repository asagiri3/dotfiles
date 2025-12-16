#!/usr/bin/env python3

import psutil
import subprocess


def info():
    battery = psutil.sensors_battery()
    percent = int(battery.percent)
    icon = ""
    isplugged = battery.power_plugged

    if not isplugged:
        if percent == 100:
            icon = "󰂅"
        elif percent > 89 and percent < 100:
            icon = "󰂋"
        elif percent > 79 and percent < 90:
            icon = "󰂊"
        elif percent > 69 and percent < 80:
            icon = "󰢞"
        elif percent > 59 and percent < 70:
            icon = "󰂉"
        elif percent > 49 and percent < 60:
            icon = "󰢝"
        elif percent > 39 and percent < 50:
            icon = "󰂈"
        elif percent > 29 and percent < 40:
            icon = "󰂇"
        elif percent > 19 and percent < 30:
            icon = "󰂆"
        elif percent > 9 and percent < 20:
            icon = "󰢜"
        elif percent > 0 and percent < 10:
            icon = "󰢟"
        message = str(percent) + "%"
        print(icon, message)
    else:
        if percent == 100:
            icon = "󰁹"
        elif percent > 89 and percent < 100:
            icon = "󰂂"
        elif percent > 79 and percent < 90:
            icon = "󰂁"
        elif percent > 69 and percent < 80:
            icon = "󰂀"
        elif percent > 59 and percent < 70:
            icon = "󰁿"
        elif percent > 49 and percent < 60:
            icon = "󰁾"
        elif percent > 39 and percent < 50:
            icon = "󰁽"
        elif percent > 29 and percent < 40:
            icon = "󰁼"
        elif percent > 19 and percent < 30:
            icon = "󰁻"
        elif percent > 9 and percent < 20:
            icon = "󰁺"
        elif percent > 0 and percent < 10:
            icon = "󱃍"
        message = str(percent) + "%"
        print(icon, message)


info()
p = subprocess.Popen(["upower", "--monitor"], stdout=subprocess.PIPE, text=True)

for line in p.stdout:
    if "battery" in line.lower():
        info()
