# System Profile

## Hardware and Operating System

| Component | Specification |
|---|---|
| CPU Model | 12th Gen Intel Core i3-1215U |
| CPU Cores | 6 physical cores (8 threads) |
| Total RAM (WSL reported) | 3.7 GiB |
| Available RAM (WSL reported) | 3.3 GiB |
| Storage | WSL virtual disks detected; physical SSD details not yet verified |
| Operating System | Linux (WSL) |
| Architecture | x86_64 |
| Kernel | Refer to uname -a output in os.txt |

## Binary Number Representation

### 1. Decimal 75 to Binary

Repeated division by 2:

75 ÷ 2 = 37 remainder 1
37 ÷ 2 = 18 remainder 1
18 ÷ 2 = 9 remainder 0
9 ÷ 2 = 4 remainder 1
4 ÷ 2 = 2 remainder 0
2 ÷ 2 = 1 remainder 0
1 ÷ 2 = 0 remainder 1

Reading remainders from bottom to top:

(75)₁₀ = (1001011)₂

### 2. Binary 110101 to Decimal

Using positional weights:

= 1×2⁵ + 1×2⁴ + 0×2³ + 1×2² + 0×2¹ + 1×2⁰

= 32 + 16 + 0 + 4 + 0 + 1

= 53

Therefore, (110101)₂ = (53)₁₀.

### 3. Why Computers Use Binary

Computers use binary because electronic circuits can reliably represent two states, ON (1) and OFF (0), making data processing and storage efficient and reliable.
