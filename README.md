# Quattro-Stagioni
RTD-Sensor Breakoutboard and C-Library

## Some Links
[Widerstandsthermometer / Pt100 Fühler](https://www.tcgmbh.de/widerstandsthermometer/pt100-fuehler.html?gad_source=1&gclid=EAIaIQobChMIzJ2AwLC6hwMVt5hQBh2AcgBmEAAYAiAAEgKx2PD_BwE)

[Wissenswertes über RTDs](https://www.te.com/de/products/sensors/temperature-sensors/resources/understanding-rtds.html)

###
RTD stands for Resistance Temperature Detector. Most common used version is PT100, PT1000, KTY.
RTD Messverfahren werden von IC implementiert wie z.B. der ADS124 von TI. Mit ca. 15€ sind diese jedoch sehr preisintensiv. 
Diese Sensoren werden typischerweise mit einem konstanten Strom um die 1mA bestromt und der resultierende Spannungsfall wird gemessen.
Die spezifische Kennklienie gibt Aufschluss über die vorherrschende Temperatur.
Dieses einfache Messverfahren hat den Nachteil, dass im interesanten Wertebereich von 0 bis 100 •C nur ein sehr geringer Spannungshub von nur xxx V entsteht.
Das erfordert einen sehr hochauflösenden ADC (16bit oder mehr) um ausreichend Genauigkeit z erzielen.
Desweiteren wird die Referenzspannung des ADC nur in einem sehr kleinen Arbeitsbereich verwendet.
Abhilfe schafft eine einfache Verstärkerschaltung mit einem unioolarem OP.
Dieses hier vorgestellte analoge Eingangsstufe kann auch für andere physikalische Größen verwendet werden wie z.B. Ladekennlinie moderne Akkus.

# Sorces
- Wolf-Dieter Schmidt, Sensorschaltungstechnik, Elektronik 8, Vogel Fachbuch, Linearisierung von Silizium-Widerstandssensoren, S. 71
