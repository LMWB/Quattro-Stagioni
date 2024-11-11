# Testing, Measurements & Results
## Setup
In the test setup I make use of [DS18B20 sensor board](https://github.com/LMWB/Quattro-Formaggi) as a reference.
The DS18B20 is a well documented digital temperature sensor.
Since it is factory calibrated, I can assume it's measurements are exact (in terms of consumer market quality).
So I use the results of the DS18B20 to estimate how good my measurement bridge is working. 

I than use a rubber band to attache one DS18B20 to one PT1000 sensor. I did this twice. On pair is going to do a *hot to room temperature test*. The other pair is doing a *cold to room temperature test*. I use a metal small pitcher filled with hot water from the kettle. And I use thermal pack from the freezer. Both gets equipped with one pair of temperature sensors.

## Execution
To start the testing scene I only had to plug in the two Nucleo boards to my computer and start a serial terminal to log the outputs to console. I used CuteCom. The firmware of each Nucleo board prints the temperature conversion results to serial monitor with 5000ms period (f=0.2Hz). Total record time is T = N/f = 15540/0.2Hz = 77700 sec = 21h:30min.

## Interpretation
Study the plots two things are to mention: 
- the measurement bridge (blue line) is much noisy 
- red line and blue line are quit identical except below zero degrees Celsius

The glitch in the cold record at around 3800 ms is due to my impatience. I lifted the thermal pack to feel the cold with my hand. At least I could verify that both type of sensors a quick in response :).

![](../Images/results-cold-to-room.png)
![](../Images/results-hot-to-room.png)
![](../Images/results-cold-to-room-lp.png)
![](../Images/results-hot-to-room-lp.png)

- to smooth the measurements I added a moving-average filter
- recap the schematics and the simulation done there it is clear, that this circuit is not gonna work for temperatures below zero, so the behavior is quit as expected.

## Error
![](../Images/results-error.png)

## Conclusions
