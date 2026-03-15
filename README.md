⚡ Overcurrent Relay Setting Calculator (MATLAB)

📌 Project Overview

The Overcurrent Relay Setting Calculator is a MATLAB-based simulation tool designed to analyze the time-current characteristics of IDMT (Inverse Definite Minimum Time) overcurrent relays used in power system protection.

The program computes pickup current, Plug Setting Multiplier (PSM), and relay operating time using IEC standard inverse equations. It supports Standard Inverse, Very Inverse, and Extremely Inverse relay characteristics and generates characteristic curves for relay coordination studies.

This project demonstrates practical application of protection engineering concepts used in substations and transmission systems.

🎯 Objectives

Implement IEC-based IDMT relay mathematical models

Calculate pickup current using CT ratio and plug setting

Compute Plug Setting Multiplier (PSM)

Determine relay operating time for varying fault levels

Generate time-current characteristic curves

Study effect of Time Multiplier Setting (TMS)

⚙️ Theoretical Background
🔹 Overcurrent Protection

An overcurrent relay operates when current exceeds a predefined pickup value. It is widely used for feeder, transformer, and line protection.

🔹 Plug Setting Multiplier (PSM)
𝑃
𝑆
𝑀
=
𝐹
𝑎
𝑢
𝑙
𝑡
 
𝐶
𝑢
𝑟
𝑟
𝑒
𝑛
𝑡
𝑃
𝑖
𝑐
𝑘
𝑢
𝑝
 
𝐶
𝑢
𝑟
𝑟
𝑒
𝑛
𝑡
PSM=
Pickup Current
Fault Current
	​


Relay operates only when PSM > 1.

🔹 IEC Inverse Characteristics

The relay operating time is calculated using:

𝑇
=
𝐾
×
𝑇
𝑀
𝑆
(
𝑃
𝑆
𝑀
𝛼
−
1
)
T=
(PSM
α
−1)
K×TMS
	​


Where:

T = Operating time (seconds)

TMS = Time Multiplier Setting

K, α = Constants depending on relay type

Relay Type	K	α
Standard Inverse	0.14	0.02
Very Inverse	13.5	1
Extremely Inverse	80	2
🖥️ Features

✔ CT ratio consideration (Primary/Secondary conversion)
✔ Plug setting percentage input
✔ Automatic pickup current calculation
✔ PSM computation
✔ Standard / Very / Extremely inverse options
✔ Operating time calculation
✔ Multi-TMS comparison for coordination
✔ Time-current characteristic plots

📥 Inputs Required

CT Primary Current (A)

CT Secondary Current (A)

Plug Setting (%)

Time Multiplier Setting (TMS)

Relay Characteristic Type

📤 Outputs Generated

Pickup Current (Primary & Secondary)

Plug Setting Multiplier (PSM)

Relay Operating Time

Maximum and Minimum operating time

Time–Current Characteristic Curve

Relay Coordination (Multi-TMS plot)

📊 Sample Input

CT Primary: 1000 A
CT Secondary: 5 A
Plug Setting: 100 %
TMS: 0.1
Characteristic: Standard Inverse

📈 Expected Results

Relay operates only when fault current exceeds pickup current

Operating time decreases as fault current increases

Higher TMS results in slower relay operation

Extremely inverse characteristic gives steeper curve

🛠️ Software Requirements

MATLAB (R2020 or later recommended)

No additional toolboxes required

🚀 How to Run

Open MATLAB

Create a new script file

Paste the provided code

Run the script

Enter required inputs when prompted

View numerical results and generated plots

📚 Learning Outcomes

Understanding of IDMT relay characteristics

Protection coordination principles

CT ratio and plug setting calculations

Time-current curve interpretation

MATLAB-based power system protection simulation

🎓 Applications

Substation protection design

Feeder and transformer protection studies

Relay coordination analysis

Fault level and grading margin studies

Academic power system laboratories

📌 Resume Description

Developed a MATLAB-based IDMT Overcurrent Relay Setting and Coordination Tool incorporating CT ratio, plug setting, IEC inverse characteristics, and TMS-based coordination analysis for power system protection studies.

👨‍💻 Author

Rohan Vishwakarma
Electrical Engineering Student
