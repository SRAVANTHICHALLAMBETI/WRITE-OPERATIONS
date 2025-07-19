# WRITE-OPERATIONS

"COMPANY": CODTECH IT SOLUTIONS

"NAME":CHALLAMBETI SRAVANTHI

"INTERN ID":CT06DG3299

"DOMAIN":VLSI

"DURATION":6 WEEKS

"MENTOR":NEELA SANTOSH

DESCRIPTION FOR TASK 2:


🖥️ Tools Used

1. Vivado Design Suite (2023.2)

This project was developed and simulated using Vivado, which is a design tool from Xilinx for FPGA and digital circuit design. Vivado supports:

Verilog, VHDL, and SystemVerilog coding

RTL design and simulation

Synthesis and implementation on FPGA boards


Version Used: Vivado 2023.2, as seen in your screenshots.

Vivado is especially powerful for Xilinx FPGAs and SoC devices, and it provides tools for schematic viewing, waveform simulation, design constraint management, and more.


---

2. Verilog HDL (Hardware Description Language)

The coding was done in Verilog, which is a widely used hardware description language for modeling digital circuits. Verilog allows you to describe both the behavior and the structure of your circuit at different levels (gate-level, RTL, etc.).

In your project:

You defined a module sync_ram using Verilog.

Parameters like DATA_WIDTH and ADDR_WIDTH make it scalable.

The testbench (task2_tb.v) was written to verify read/write operations.



---

3. Text Editor/IDE in Vivado

The Verilog code was written directly inside Vivado's built-in text editor, which supports syntax highlighting, auto-indentation, error checking, and navigation between modules and files.

You worked in Vivado's Project Navigator, as shown in the tabs and the file structure:

task2.v: Your RAM module code

task2_tb.v: Your testbench

task2.sim: Simulation setup and waveform output

Schematic view and RTL diagrams were auto-generated from code



---

🧪 What Was Done: Design + Test

You created a synchronous RAM with:

Inputs: clk, we (write enable), addr, din

Output: dout

Internal memory initialized using a register array


✅ Write Operation

When we = 1, on the rising edge of clk, the data din is stored into memory at addr.

✅ Read Operation

When we = 0, the memory is read from addr, but the output dout is updated after 1 clock cycle because it's registered output — which is synchronous and expected behavior.


---

📊 Simulation Output

You used Vivado’s Behavioral Simulation feature:

To verify correct data writes and reads at different addresses

Waveforms show clk, we, addr, din, and dout

The delay in dout confirms that output is clock-synchronized


Your waveform and RTL diagram confirm that the design is implemented correctly.


---

🧠 Where Is This Applicable?

Synchronous RAMs like this are fundamental to almost every digital system. Here's where they're used:

1. FPGAs

Your task is very relevant to FPGA design, where custom memory modules are frequently embedded into logic.

2. Embedded Systems

Microcontrollers and SoCs use RAM blocks for temporary data storage (e.g., buffering, caching, or fast data access).

3. CPU Cache Design

Your simple RAM is a building block toward cache memory or register files used in processor pipelines.

4. ASIC Prototyping

Designers use such modules to simulate memory functionality in Application-Specific Integrated Circuits (ASICs).


---

🎓 Educational Value

This task teaches:

Verilog coding skills

Clocked logic and synchronization

Simulation and verification in Vivado

Understanding timing behavior and waveform interpretation

RTL schematic design and register-based memory implementation



---

🧾 Conclusion

You have designed and verified a working synchronous RAM system using Vivado 2023.2, Verilog, and functional simulation. This task is not just academic — it's a real-world digital design component used in many advanced systems.



#OUTPUT

<img width="1366" height="768" alt="Image" src="https://github.com/user-attachments/assets/e362cc99-9545-4a6a-b637-55f79418d4f3" />
<img width="1366" height="768" alt="Image" src="https://github.com/user-attachments/assets/039ae9bb-f992-4d5a-bb33-2b1564c257a5" />
