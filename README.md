# Quattro-Stagioni
RTD-Sensor Breakoutboard and C-Library

# Abstract
RTD stands for Resistance Temperature Detector. Most common used versions are PT100, PT1000 and KTY.

RTD Messverfahren werden von IC's implementiert wie z.B. der ADS124 von TI. Mit ca. 10€ sind diese jedoch verhaeltnismaessig preisintensiv.
RDT-Sensoren werden typischerweise mit einem konstanten Strom um die 1mA beaufschlagt und der daraus resultierende Spannungsfall wird gemessen.
Die spezifische Kennklienie gibt Aufschluss über die vorherrschende Temperatur.
Dieses einfache Messverfahren hat den Nachteil, dass im interesanten Wertebereich von ca. 0 bis 70 •C nur ein sehr geringer Spannungshub von ca. 250 mV entsteht (abhaengig vom gewaehlten erregerstrom, je kleiner um so besser um die Eigenerwaermung im Sensor zu vermeiden). Die Kurve R = f(T) ist also sehr flach. 
![RTC Function](/Images/PT1000-1.png)
Es erfordert einen sehr hochauflösenden ADC (16bit oder mehr) um einen entsprechenden Ausschlag zu messen.
Ein weitere Nachteil ist, dass die Referenzspannung des ADC nur in einem sehr kleinen Arbeitsbereich verwendet wird.
![Messverstaerker](/Images/OPMessbruecke.png)
Abhilfe schafft eine einfache Verstärkerschaltung mit einem unipolarem Operationsverstaerker.
Dieses hier vorgestellte analoge Eingangsstufe kann auch für andere physikalische Größen verwendet werden wie z.B. Ladekennlinie moderne Akkus welche von Natur aus sehr flach sind.

![LTSpice Simulation Messbruecke](/Images/LTSpice-RTC-Messbruecke-Simulation.png)
- blue without gain amplifier
- green with gain amplifier

Die oben beschriebene Schaltung wurde im Formfaktor eines vereinfachten Arduino-Shield realisiert. Die Platinein implementier 4-Kanal Messkanale da ein 4-fach OP verwendet wurde.
![Arduino compatible breakout](/Images/Kicad-RTC-Messbruecke.png)

# Documentation
[PCB Design and Gerber Files](/Hardware/)  
[Simulations and Models](/Simulations/)  
[Microcontroller based C-Code](/Software/)  
[Results and Discussion](/Testing/)  

# Dodo
- translate to english
- solder PCB
- testing
- reference measurement
- add CAN or Modbus to PCB

# Some Web Links
[Widerstandsthermometer / Pt100 Fühler](https://www.tcgmbh.de/widerstandsthermometer/pt100-fuehler.html?gad_source=1&gclid=EAIaIQobChMIzJ2AwLC6hwMVt5hQBh2AcgBmEAAYAiAAEgKx2PD_BwE)  
[Wissenswertes über RTDs](https://www.te.com/de/products/sensors/temperature-sensors/resources/understanding-rtds.html)  
[ADS124 at mouser.com](https://www.mouser.de/ProductDetail/Texas-Instruments/ADS124S08IPBSR?qs=Bho%2FbeBaDEw8zBU%2F9K2heg%3D%3D)  

# Sorces
Wolf-Dieter Schmidt, Sensorschaltungstechnik, Elektronik 8, Vogel Fachbuch, Linearisierung von Silizium-Widerstandssensoren, S. 71
