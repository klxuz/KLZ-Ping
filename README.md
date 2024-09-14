
---

# Pinger Tool

## Description

**Pinger Test** is a network stress-testing tool created for educational purposes. It allows users to send UDP packets to a target IP address or a resolved web address, simulating a network stress test. This tool was built to help users understand network traffic behavior under stress conditions and should be used responsibly.

## Features
- Stress-test an IP Address
- Stress-test a Website (resolves to IP)
- Built-in design inspired by Anonymous
- Displays progress with a simulated loading bar
- Continuously sends packets with UDP protocol

**Disclaimer**: This tool is for educational purposes only. Misuse of this tool for illegal activities, such as DDoS attacks, is against the law. Use it at your own risk; the developers are not responsible for any misuse.

## Installation

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/klxuz/KLZ-Ping.git
   cd KLZ-Ping
   ```

2. **Make the script executable**:
   ```bash
   chmod +x update.sh
   ```

3. **Install Required Tools**:
   - Ensure that Python is installed on your system. Run:
     ```bash
     apt update && apt install python3
     ```

## Usage

1. Run the tool:
   ```bash
   ./stress_test.sh
   ```

2. You'll be presented with a menu to either:
   - **Option 1**: Stress-test an IP Address
   - **Option 2**: Stress-test a Web Address (resolves to an IP)
   - **Option 3**: Exit the tool

3. If you choose to stress test:
   - Enter the target IP address or web address.
   - Enter the port number you want to start sending packets to.
   - The tool will start sending packets to the target and increment the port after each packet until it reaches port 65534, at which point it will loop back to port 1.

## Example

```bash
Enter option number: 1
Enter IP Address: 192.168.1.1
Enter Port: 80
[INFO] Sent 1 packet to 192.168.1.1 through port: 80
[INFO] Sent 2 packet to 192.168.1.1 through port: 81
...
```

## Legal Disclaimer

This tool is only for educational purposes and testing your own network security. Any misuse of this tool is solely the responsibility of the user. The developers are not responsible for any damage caused by the misuse of this tool.

## Author


- **Mr.D03RE**
- **KLXUZ CL4U3**

## Contact

For any questions or discussions, message me on FACEBOOK : klxuz cluiz

---
