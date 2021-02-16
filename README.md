# HA-Tasmota-Garage-Relay

The simplest version of a GarageDoor Relay working with Home Assistant and Tasmota. What is nice is I now export it from HA to HomeBridge and all shows up properly on the iPhone.

  There are two files, one is for setting up Tasmota. I use a D1 Mini with a single relay. On the D1 Mini I have 3 elements
<ol>
  <li><b>Relay 1</b> - this sends a short pulse to open/close the garage door </li>
  <li><b>Switch 3</b> - I use a Photoresistors(LDR) sensor to detect the LED on my garage door that shows Closed. I could use a reed switch or solder it to the LED, but did not want to tinker with an old system and this required no odd cabling, etc </li>
  <li><b>Switch 2 </b>- Another Photoresistors(LDR). This one is detects the Open Door signal, but this has an oddity that it blinks, so had to tweak the debounce to handle this. </li>
</ol>

The other is the config file. I call it GarageDoor.yml which I put under packages. 

This came originally from Dr ZZs's video 
https://www.youtube.com/watch?v=QMepwpyjMCY&t=117s
