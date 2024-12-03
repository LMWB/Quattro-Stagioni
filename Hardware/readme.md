# Hardware Description
todo
# BOM and costs
Estimation of costs for RDC Sensor Board with four channels. Prizing from mouser.com 100 pieces. This calculation considers only parts relevant for the measurement bridge to make it comparable.  

| Part                             | Quantities      | Cost per unit (Euro) | Cost total |
| -------------------------------- | -----------     | -----------          | ---------- |
| LM324 Operational Amplifier      | 1               | 0,08                 | 0.08  |
| REF195 Reference Voltage Source  | 1               | 3,11                 | 3.11  |
| Decoupling Capacity              | 5               | 0,07 (WE)            | 0,35  |
| Resistor 1%                      | 16              | 0,01 (Vishay)        | 0,16  |

In Total: 3.7 Euro where the reference voltage is the most expensive part. 

In comparison to a quite popular approach using the ADS124S integrated RCD Measurement IC from Texas Instruments. 

| Part                             | Quantities      | Cost per unit (Euro) | Cost total |
| -------------------------------- | -----------     | -----------          | ---------- |
| ADS124s 24-Bit ADC    | 1               | 5,36                 |   |
| Decoupling Capacity              |                |            |  |
| Resistor 1%                      |               |         |  |

In Total: 5.36 Euro
With LM324 sampling is much faster since its four channels in parallel where as the ADS124 has to multiplex, but with the ADS124 approach data is already in digital format.  
