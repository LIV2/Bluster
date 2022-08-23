# Bluster - A2000 CPLD Buster replacment
This is a replacement for the Buster IC used in the Amiga 2000

![PCB](Docs/PCB.png?raw=True)

## Programming the CPLD

Instructions can be found [Here](Programming.md)

## Revision History
So far there are no functional differences across the various revisions, just rerouting to look prettier
 
* Rev A: Initial Revision
* Rev B: Design into smaller PCB
* Rev C: Tweak PCB design, change LDO to more standard LM1117 type

## Bill of materials

|Component|Location|QTY|Link|
|---------|--------|---|------|
|XC9572XL-10VQ64C|U1|1|[Mouser](https://www.mouser.se/ProductDetail/217-C9572XL-10VQG64C)|
|LM1117-3.3|U2|1|[Mouser](https://www.mouser.com/ProductDetail/863-NCP1117ST33T3G)|
|4.7uF Ceramic Capacitor, 0805|C5|1|[Mouser](https://www.mouser.com/ProductDetail/187-CL21A475KOFNNNG)|
|0.1uF Ceramic Capacitor, 0805|C1-4|4|[Mouser](https://www.mouser.com/ProductDetail/963-EMF212B7104MGHT)|
|10uF Ceramic Capacitor, 0805|C6|1|[Mouser](https://www.mouser.com/ProductDetail/187-CL21A106KOQNNNG)|
