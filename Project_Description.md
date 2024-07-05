# Network Troubleshooting Linux - Version 1

This project demonstrates network troubleshooting techniques on Linux based on the OSI model. Each OSI layer is addressed with specific tools and commands to diagnose and resolve network issues.

## Coding Details:

### Network Troubleshooting on Physical Layer (layer1_physical.sh)

#### Explanation:
1. `#!/bin/bash`: This is a shebang line that tells the system to use the Bash shell to interpret the script.
2. `mkdir -p results`: This command creates the `results` directory if it doesn't already exist. The -p flag ensures that no error is raised if the directory already exists.
3. `ip link show >> results/layer1_physical.txt`: Displays the status of all network interfaces. This command provides detailed information about network interfaces, including their state (up or down), MAC address, MTU (Maximum Transmission Unit), and more. Then the output save into `results/layer1_physical.txt`.
4. `ip -br link show >> results/layer1_physical.txt`: Displays the status of all network interfaces in a brief format. The `-br` (brief) option provides a concise summary of the network interfaces' status. Then the output save into `results/layer1_physical.txt`.
5. `ip -s link show enp0s3 >> results/layer1_physical.txt`: Displays detailed statistics for the specified network interface (`enp0s3`). The `-s` option includes detailed statistics, such as the number of packets transmitted and received, errors, and dropped packets. Then the output save into `results/layer1_physical.txt`.
6. `ethtool enp0s3 >> results/layer1_physical.txt`: Displays or changes settings for the specified network interface (`enp0s3`). `ethtool` provides detailed information about the network interface, such as speed, duplex mode, auto-negotiation, and more. Then the output save into `results/layer1_physical.txt`.
7. `echo "Results saved in results/layer1_physical.txt"`: This prints a message to the terminal confirming that the results have been saved.

