# An open-source multimeter watch

Contained herein is the multimeter watch project - a multimeter small enough to wear on your wrist!  It utilizes the LGT8F328P-QFP32L CPU. 

The developement is ongoing, thus the project's kicad folders are split into different versions for different versions of the hardware:

# V1 prototype

The first version consists of two pcbs, mated via pin headers. The upper pcb holds the I2C display and buttons, as well as the buzzer circuit.

The bottom pcb holds the CPU, three 3.5mm jack connectors (for custom multimeter probes) and other circuitry.

Sandwiched between the two pcbs is a Li-Po battery.

It's features include:

- Timekeeping via I2C RTC
- Voltage, current measuring
- RLC tester functionality
- Programmable current source/sink
- Programmable I2C communication
- Buzzer

For photos of hardware, please scroll to [photos](#Photos).

# V2

The V2 hardware improves upon the V1 in several aspects:

- It changes the signal connection between the top and bottom PCBs from using pin headers to a flex cable. The boards are now held together by screws, allowing for much smaller vertical size. (~halved compared to V1 (todo:add measurements))
- 3.5 jack connectors replaced by S3B-PH-K-S connectors (jacks had poor structural integrity and would come loose with repeated insertions of probes).
- Buzzer circuitry moved to bottom PCB (to allow another slight decrease in vertical dimension).
- Various layout optimizations leading to smaller PCB footprint 42x46mm in V2 as opposed to 46x55mm in V1)

Perhaps most significant is the following improvement:

- Add alternative top PCB which utilizes capacitance-sensing buttons on the PCB itself instead of physical buttons. As the capacitance sensing is driven by an I2C device (an AT42QT1070-S located on the bottom side of the top PCB), 6 pins of the CPU are freed from being used as button inputs.

Thus, when the V2 version is used with the capacitance touch top PCB, up to 6 GPIO pins become available to the user.





# Photos

V1:
(10 CZK coin for scale (diameter = 24.5mm))
![v1assembled](https://github.com/ptrbroz/Multimeter_watch/blob/master/images/v1assembled.jpg)
![v1disassembled](https://github.com/ptrbroz/Multimeter_watch/blob/master/images/v1disassembled.jpg)
V2:
(to be photographed)
