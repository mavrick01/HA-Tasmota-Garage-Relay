# Basic Wifi Setup
backlog SSID1 <Your SSID>; password <Your WIFI Password>; hostname GarageDr; FriendlyName GarageDr; DeviceName GarageDr
# Set to Generic Module and set D1 (GPIO 05) - Relay 1, D5 (GPIO 14) - Switch 2, D6 (GPIO 12) - Switch 3
Backlog Module 18; GPIO05 12; GPIO 12 11; GPIO 14 10
# Setup MQTT and display the name and IP on login
Backlog MqttHost <yourhost>; MqttUser <user>; MqttPassword <password>; Topic GarageDr; SetOption53 1
# Tweak the items, Always reboot as off, Turn the relay to off after 2 seconds, Disable MQTT Retain for Button, Enable MQTT Retain for Switches, Set the Switch to inverted follow, Set the Topic for the Switches 
Backlog PowerOnState 0, PulseTime1 5, ButtonRetain 0, SwitchRetain 1, SwitchMode2 2, SwitchMode3 2, SwitchTopic GarageDrLED; SwitchDebounce 500
