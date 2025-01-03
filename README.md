# Interrupt-Driven-Traffic-Light-System-on-Zynq-MPSoC

## Objective
The  goal is to show how to handle interrupts generated by the Programmable Logic (PL) and process them on the Processing System (PS) side. Key topics include debouncing, edge detection, block design, and implementing hardware-software integration.

---

## Contents
1. **Push Button Debouncing**
   - Understand and implement debouncing techniques to eliminate glitches in button signals.
   
2. **Edge Detection**
   - Design and test an edge detector capable of identifying rising and falling edges of input signals.
   
3. **Block Design**
   - Set up and configure a block design using Zynq MPSoC, GPIO IPs, and an AXI Interrupt Controller.
   
4. **Traffic Light Simulation**
   - Implement a traffic light system with pedestrian support using interrupts and timing cycles.

---

## Getting Started
### Prerequisites
- Vivado Design Suite
- Pynq Framework
- Python (via Jupyter Notebook)
- Basic knowledge of Verilog/VHDL and FPGA block designs

### Files
- **`traffic light py code.py`**: Python script for Traffic-Light-System.
- **Block Design Files**: Hardware design files for setting up the Zynq MPSoC and peripherals.
- **Testbench Code**: Verilog testbenches for verifying the functionality of the debouncer and edge detector designs.

---

##  Steps
1. **Design & Simulate**
   - Develop the debouncer and edge detector in Verilog.
   - Use testbenches to validate functionality.

2. **Hardware Configuration**
   - Create a block design in Vivado.
   - Integrate GPIO IPs, an AXI Interrupt Controller, and configure Zynq MPSoC settings.

3. **Software Development**
   - Export the hardware and implement Python scripts in Jupyter for hardware testing.
   - Test the functionality by toggling LEDs and simulating a traffic light system.

4. **Validate & Test**
   - Implement and test the traffic light system with pedestrian support.
   - Press the button to verify Traffic Signal Changes accordingly.

---

## Skills and Tools
- **Programming Languages**: Verilog, Python
- **Software Tools**: Vivado, Jupyter Notebook
- **Concepts**: Debouncing, Edge Detection, Interrupt Handling
