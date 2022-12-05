# Bluster - A2000 CPLD Buster replacment
This is a replacement for the Buster IC used in the Amiga 2000

![PCB](Docs/PCB.png?raw=True)

## Programming the CPLD
Download the firmware corresponding to your board revision (right-click -> save as):

* [Rev A](https://github.com/LIV2/Bluster/raw/master/Binary/Bluster_rev_a.jed)
* [Rev B](https://github.com/LIV2/Bluster/raw/master/Binary/Bluster_rev_b.jed)
* [Rev C](https://github.com/LIV2/Bluster/raw/master/Binary/Bluster_rev_c.jed)

And follow the instructions found [Here](Programming.md)

## Revision History
So far there are no functional differences across the various revisions, just rerouting, pin swapping and part changes
 
* Rev A: Initial Revision
* Rev B: Design into smaller PCB
* Rev C: Tweak PCB design, change LDO to more standard LM1117 type

## Bill of materials
Make sure to use the BOM that matches the revision of your Bluster PCB.

* [Rev A/B BOM](BOM_rev_ab.md)
* [Rev C BOM](BOM_rev_c.md)
