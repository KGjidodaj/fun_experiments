# The Operations Sandbox (fun_experiments) [Updated as I go]

> A strictly CLI-based Research & Development (R&D) environment for testing and learning System Automation, Data Pipelines, and Git Version Control mechanics.

## Ideology & Purpose
This repository is not for production-ready code. It serves as my own personal **Chaos Engineering and IT Infrastructure Sandbox** that helps me grasp complex concepts.
The goal is to isolate these complex concepts (like cross-language execution, I/O streams, and version control conflicts) and break them down into functional, terminal-only experiments before improving and implementing them in larger Enterprise simulations.

## 📂 Architecture & Experiments:

### 1. The Mock Data Generator (`/mock_data`)
An automated data generation and logging pipeline.
* **How it works:** A **Bash** orchestrator prompts the user for the desired number of accounts.
  It then executes two separate **Python** scripts (one for username generation, one for password generation). 
  The Bash script captures these outputs, formats the data, and writes the structured records directly into a `.log` file.

### 2. The Multi-Language String Checker (`/string_checker`)
A cross-language data structure experiment replicating Python's `.isalpha()` method from scratch.
* **How it works:** A 3-language execution pipeline. A **Bash** script captures raw user input and passes it to a compiled **C** binary to calculate the exact string length at the memory level.
  The output is then piped into a **Python** script which validates the string, checking for illegal gaps (spaces) or numerical digits.

### 3. Version Control Disaster Recovery (`conflict_test.txt`)
A deliberate simulation of a Git Version Control catastrophe.
* **How it works:** I intentionally created parallel Git branches (`main` vs `chaos-branch`), modified the exact same lines of code in this file, and forced a **Merge Conflict**. 
  The purpose was to study Git's conflict markers like (`<<<<<<< HEAD`) and manually resolve the collision through the `nano` editor, replicating a real-world DevOps code-merge crisis and a solution to it.

---
*Built via Headless SSH sessions. All code authored directly in the terminal via nano editor for bash scripts and .c files. All python files where created in VScode and dumped in a nano editor to create the file.*
