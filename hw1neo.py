import requests
import board
import neopixel
import time

pixel_pin=board.D18
num_pixels=8
ORDER = neopixel.RGB
pixels = neopixel.NeoPixel(
        pixel_pin, num_pixels, brightness=0.2, auto_write=False, pixel_order=ORDER)

response = requests.get("https://api.weather.gov/gridpoints/OKX/34,32/forecast")
print(response.status_code)

json_data=response.json()
props=json_data['properties']
periods = props['periods']
val = periods[0]
shortForecast = val['shortForecast']
print(shortForecast)
windDirection = val['windDirection']
print(windDirection)
def pixel_call():
	if windDirection == "N":
		pixels[0]=(255,0,0)
	elif windDirection == "NE":
		pixels[1]=(255,0,0)
	elif windDirection == "E":
               pixels[2]=(255,0,0)
	elif windDirection == "SE":
                pixels[3]=(255,0,0)
	elif windDirection == "S":
                pixels[4]=(255,0,0)
	elif windDirection == "SW":
                pixels[5]=(255,0,0)
	elif windDirection == "W":
                pixels[6]=(255,0,0)
	elif windDirection == "NW":
                pixels[7]=(255,0,0)


	pixels.show()
while True:
	pixel_call()
