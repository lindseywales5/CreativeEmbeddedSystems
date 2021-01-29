Lindsey Wales
Homework 1

Video: https://youtu.be/EYOza0UUD5c

This program is intended to foster a sense of connection between individuals stuck in isolation and the outside world. It consists of a couple of components. First, there is Python code that calls a weather service API and lights up a ring of 8 Neopixel LEDs based on the cardinal direction in which the wind is blowing. When the video was taken the wind was blowing NW. Next, there is Processing code that displays a full screen, abstract rendition of my living room. Ideally, anyone wanting to run this program would have a Processing creation personalized to represent their home. The program can be reproduced as follows:

1. Call the weather.gov API at https://api.weather.gov/points/<your latitude, your longitude> . Check the ‘forecast’ property of the response to find out your grid endpoint. With that information you can call “https://api.weather.gov/gridpoints/{office}/{grid X, grid Y}/forecast to get your local weather. Replace the link in the python code (which currently return weather for my home area of Brooklyn, NY) with yours. 

2. In order to display the Processing visual on startup of the raspberry pi, you can cd into 
/etc/xdg/lxsession/LXDE-pi and open the autostart file in your favorite editor. Insert the line usr/local/bin/processing-java —sketch=/home/pi/<remainder of the file extension> and save the changes.

3. Edit /etc/rc.local to run the Python code on boot. I did this by inserting the line “sudo python3 hw1neo.py “ into rc.local

4. Set up the monitor in a public-facing window. Plug the LEDs into the raspberry pi and use a small loop of tape to attach it to the monitor with the wires facing up. This will ensure the lights are properly oriented to display wind direction.

5. Boot up the Raspberry Pi. The rest will happen automatically.  
