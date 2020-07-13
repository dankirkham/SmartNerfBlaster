# SmartNerfBlaster v1 PCB

![SmartNerfBlaster v1 PCB Assembled](assembly.jpg)

## Known Issues
- A trace chops the ground plane, separating the microcontroller (U2) from its decoupling capacitor (C4).
- The ISP header goes not have enough room for a shrouded header (3M 30306-6002HB). The microcontroller is in the way. A regular 2x3 pin header must be used instead of the shrouded header. This is not optimal because the programmer can be plugged in backwards.
