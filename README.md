# The Operations Sandbox (fun_experiments) [Updated as I go]

> A strictly CLI-based Research & Development (R&D) environment for testing and learning System Automation, Data Pipelines, and Git Version Control mechanics.

## Ideology & Purpose
This repository is not for production-ready code. It serves as my own personal **Chaos Engineering and IT Infrastructure Sandbox** that helps me grasp complex concepts.
# The Operations Sandbox (`fun_experiments`)

A strictly CLI-based Research & Development (R&D) environment for testing, learning and advancing in System Automation, Data Pipelines and Git Version Control mechanics.

### Ideology & Purpose
This repository is not for production-ready code. It serves as my own personal **Chaos Engineering and IT Infrastructure Sandbox** that helps me grasp and study complex concepts. The goal is to isolate these mechanics (like cross-language execution, I/O streams, and version control conflicts) and break them down into functional, terminal-only experiments before improving and implementing them in larger Enterprise architectures.

### 📂 Architecture & Experiments

#### 1. The Mock Data Generator (`/mock_accounts`)
An automated data generation and logging pipeline.
* **How it works:** A **Bash** orchestrator prompts the user for the desired number of accounts. It then executes two separate **Python** scripts (one for username generation, one for password generation). The Bash script captures these outputs, formats the data, and writes the structured records directly into a `.log` file.
* **The Origin Story:** Originally, I wanted to create a CPU stresser for my telemetry project without relying on a standard infinite `while true` loop. I eventually pivoted to this account generator, where the user specifies the exact number of accounts to create. It also served as a great refresher for Python, as it had been a couple of years since I last used it!

#### 2. The Multi-Language String Checker (`/string_checker`)
A cross-language data structure experiment replicating Python's `.isalpha()` method from scratch my way.
* **How it works:** A 3-language execution pipeline. A **Bash** script captures raw user input and passes it to a compiled **C** binary to calculate the exact string length at the memory level. The output is then piped into a **Python** script which validates the string, checking for illegal gaps (spaces) or numerical digits.
* **The Origin Story:** While writing the Python scripts for the mock accounts generator, I needed to validate strings. Instead of just using the built-in `.isalpha()` method I thought to myself why not build it from scratch using "pure code." I hit a wall trying to find the string length without standard for loop string input in Python, remembered how efficient C is at memory-level string manipulation and seized the opportunity to practice cross-language execution and terminal pipes!

#### 3. Version Control Disaster Recovery (`conflict_test.txt`)
A deliberate simulation of a Git Version Control catastrophe.
* **How it works:** I intentionally created parallel Git branches (`main` vs `chaos-branch`), modified the exact same lines of code in this file, and forced a **Merge Conflict**. The purpose was to study Git's conflict markers like `<<<<<<< HEAD` and manually resolve the collision through the `nano` editor, replicating a real-world DevOps code-merge crisis and its resolution.
* **The Origin Story:** To be completely truthful, I had seen so many Engineers talking about the dread of merge conflicts. I wanted to force one and experiment with it in a controlled environment before I stumbled into one "out in the wild" during a high-stakes production deployment.

#### 4. The Terminal UI & ANSI Renderer (`/ansi_colors`)
An experiment in Terminal User Experience (UX) and standard output manipulation.
* **How it works:** Evaluates the dynamic rendering of text colors and formatting securely within the Bash environment using native ANSI escape codes (`\033`). It ensures that visual UI elements can be deployed without corrupting background logging streams.
* **The Origin Story:** While running the `top` command, I noticed how certain background elements lit up dynamically. I researched how to replicate this  behavior, discovered ANSI escape codes and decided to implement them from scratch.

---
*Note: Built via Headless SSH sessions. All code was authored directly in the terminal via the `nano` editor for Bash scripts and `.c` files. Python files were drafted in VS Code and deployed via CLI editors.*
