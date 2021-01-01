# An open-source multimeter watch

Contained herein is the multimeter watch project - a multimeter small enough to wear on your wrist!  It utilizes the LGT8F328P-QFP32L CPU. 

The developement is ongoing, thus the project's kicad folders are split into different versions for different versions of the hardware:

# V1 prototype

The first version consists of two pcbs, mated via pin headers. The upper pcb holds the I2C display and buttons, as well as the buzzer circuit.

The bottom pcb holds the CPU, three 3.5mm jack connectors (for custom multimeter probes) and other circuitry.

Sandwiched between the two pcbs is a Li-Po battery [todo: add battery model].

It's features include:

- Timekeeping via I2C RTC
- Voltage, current measuring
- RLC tester functionality
- Programmable current source/sink
- Programmable I2C communication
- Buzzer

For photos of hardware, please scroll to [photos](#Photos).

# V2

The V2 hardware improves upon 





#Photos


![v1assembled](https://github.com/ptrbroz/Multimeter_watch/blob/master/images/v1assembled.jpg)
![v1disassembled](https://github.com/ptrbroz/Multimeter_watch/blob/master/images/v1disassembled.jpg)

