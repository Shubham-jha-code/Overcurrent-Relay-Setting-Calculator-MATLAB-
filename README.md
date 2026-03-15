# ⚡ Overcurrent Relay Setting Calculator (MATLAB)

![MATLAB](https://img.shields.io/badge/MATLAB-R2020%2B-orange)
![Domain](https://img.shields.io/badge/Domain-Power%20System%20Protection-red)
![Type](https://img.shields.io/badge/Type-IDMT%20Relay%20Analysis-blue)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![License](https://img.shields.io/badge/License-MIT-lightgrey)

---

## 📌 Project Overview

The **Overcurrent Relay Setting Calculator** is a MATLAB-based simulation tool developed to analyze the time-current characteristics of **IDMT (Inverse Definite Minimum Time) overcurrent relays** used in power system protection.

The program calculates pickup current, Plug Setting Multiplier (PSM), and relay operating time using IEC standard inverse equations. It supports **Standard Inverse, Very Inverse, and Extremely Inverse** relay characteristics and generates characteristic curves for relay coordination studies.

This project demonstrates practical implementation of protection engineering principles used in substations and transmission systems.

---

## 🎯 Objectives

- Implement IEC-based IDMT relay mathematical models  
- Calculate pickup current using CT ratio and plug setting  
- Compute Plug Setting Multiplier (PSM)  
- Determine relay operating time for varying fault levels  
- Generate time-current characteristic curves  
- Study the effect of Time Multiplier Setting (TMS)  

---

## ⚙️ Theoretical Background

### 🔹 Overcurrent Protection

An overcurrent relay operates when current exceeds a predefined pickup value. It is widely used for feeder, transformer, and line protection.

---

### 🔹 Plug Setting Multiplier (PSM)

PSM = Fault Current / Pickup Current  

Relay operates only when **PSM > 1**.

---

### 🔹 IEC Inverse Characteristics Equation

T = (K × TMS) / (PSM^α − 1)

Where:

- T = Operating time (seconds)  
- TMS = Time Multiplier Setting  
- K, α = Constants depending on relay type  

| Relay Type            | K    | α    |
|-----------------------|------|------|
| Standard Inverse      | 0.14 | 0.02 |
| Very Inverse          | 13.5 | 1    |
| Extremely Inverse     | 80   | 2    |

---

## 🖥️ Features

- CT ratio consideration (Primary/Secondary conversion)  
- Plug setting percentage input  
- Automatic pickup current calculation  
- PSM computation  
- Standard / Very / Extremely inverse options  
- Operating time calculation  
- Multi-TMS comparison for coordination study  
- Time-current characteristic plots  

---

## 📥 Inputs Required

- CT Primary Current (A)  
- CT Secondary Current (A)  
- Plug Setting (%)  
- Time Multiplier Setting (TMS)  
- Relay Characteristic Type  

---

## 📤 Outputs Generated

- Pickup Current (Primary & Secondary)  
- Plug Setting Multiplier (PSM)  
- Relay Operating Time  
- Maximum and Minimum operating time  
- Time–Current Characteristic Curve  
- Relay Coordination Plot (Multiple TMS values)  

---

## 📊 Sample Input

CT Primary: 1000 A  
CT Secondary: 5 A  
Plug Setting: 100 %  
TMS: 0.1  
Characteristic: Standard Inverse  

---

## 📈 Expected Results

- Relay operates only when fault current exceeds pickup current  
- Operating time decreases as fault current increases  
- Higher TMS results in slower relay operation  
- Extremely inverse characteristic produces steeper curve  

---

## 🛠️ Software Requirements

- MATLAB (R2020 or later recommended)  
- No additional toolboxes required  

---

## 🚀 How to Run

1. Open MATLAB  
2. Create a new script file (`overcurrent_relay.m`)  
3. Paste the provided MATLAB code  
4. Run the script  
5. Enter required input values  
6. View numerical results and generated plots  

---

## 📚 Learning Outcomes

- Understanding of IDMT relay characteristics  
- Protection coordination fundamentals  
- CT ratio and plug setting calculations  
- Time-current curve interpretation  
- MATLAB-based power system protection simulation  

---

## 🎓 Applications

- Substation protection design  
- Feeder and transformer protection studies  
- Relay coordination analysis  
- Fault level and grading margin studies  
- Academic power system laboratories  

---

## 📌 Resume Description

Developed a MATLAB-based IDMT Overcurrent Relay Setting and Coordination Tool incorporating CT ratio, plug setting, IEC inverse characteristics, and TMS-based coordination analysis for power system protection studies.

---

## 👨‍💻 Author

**Shubham Jha**  
Electrical Engineering Student  

---
