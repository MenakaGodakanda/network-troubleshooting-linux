# Network Troubleshooting Linux - Version 1

This project demonstrates network troubleshooting techniques on Linux based on the OSI model. Each OSI layer is addressed with specific tools and commands to diagnose and resolve network issues. This project not only helps in diagnosing network issues but also serves as a valuable learning resource for understanding how different layers of the OSI model function and interact in real-world networking scenarios.

## Features:

- **Open Source Tools**: Utilizes widely-used open source tools and commands available on Linux.
- **Modular Structure**: Each OSI layer is addressed separately with its own script, making it easy to update and extend.
- **Comprehensive Coverage**: Addresses network troubleshooting across all relevant OSI layers.
- **Educational Value**: Serves as a learning resource for understanding network troubleshooting and the OSI model.
- **Practical Utility**: Provides real-world command-line tools and examples that can be used in professional network administration.
- **Ease of Use**: Simple, step-by-step scripts and clear documentation make it accessible for users with basic to intermediate Linux knowledge.
- **Automation**: Scripts save time and ensure consistency by automating repetitive diagnostic tasks.

## Coding Details:

### Network Troubleshooting on Physical Layer (`layer1_physical.sh`)

#### Explanation:

1. `#!/bin/bash`: This is a shebang line that tells the system to use the Bash shell to interpret the script.
2. `mkdir -p results`: This command creates the `results` directory if it doesn't already exist. The -p flag ensures that no error is raised if the directory already exists.
3. `ip link show >> results/layer1_physical.txt`: Displays the status of all network interfaces. This command provides detailed information about network interfaces, including their state (up or down), MAC address, MTU (Maximum Transmission Unit), and more. Then the output is saved into `results/layer1_physical.txt`.
4. `ip -br link show >> results/layer1_physical.txt`: Displays the status of all network interfaces in a brief format. The `-br` (brief) option provides a concise summary of the network interfaces' status. Then the output save into `results/layer1_physical.txt`.
5. `ip -s link show enp0s3 >> results/layer1_physical.txt`: Displays detailed statistics for the specified network interface (`enp0s3`). The `-s` option includes detailed statistics, such as the number of packets transmitted and received, errors, and dropped packets. Then the output save into `results/layer1_physical.txt`.
6. `ethtool enp0s3 >> results/layer1_physical.txt`: Displays or changes settings for the specified network interface (`enp0s3`). `ethtool` provides detailed information about the network interface, such as speed, duplex mode, auto-negotiation, and more. Then the output save into `results/layer1_physical.txt`.
7. `echo "Results saved in results/layer1_physical.txt"`: This prints a message to the terminal confirming that the results have been saved.

### Network Troubleshooting on Data Link Layer (`layer2_data_link.sh`)

#### Explanation:

1. `#!/bin/bash`: Shebang line for Bash.
2. `mkdir -p results`: Creates the results directory if it doesn't exist.
3. `ifconfig -a >> results/layer2_data_link.txt`: The `ifconfig -a` command displays detailed information about all network interfaces, including MAC addresses and error statistics. The `>>` command saves this output into the `results/layer2_data_link.txt` file.
4. `ip neighbor show >> results/layer2_data_link.txt`: The `ip neighbor show` command displays IP addresses assigned to all network interfaces. This command shows the mapping between IP addresses and MAC addresses for devices on the local network. The `>>` command saves this output into the `results/layer2_data_link.txt` file.
5. `echo "Results saved in results/layer2_data_link.txt"`: Confirms that results have been saved.

### Network Troubleshooting on Network Layer (`layer3_network.sh`)

#### Explanation:

1. `#!/bin/bash`: Shebang line for Bash.
2. `mkdir -p results`: Creates the results directory if it doesn't exist.
3. `ip addr show >> results/layer3_network.txt`: The `ip addr show` command displays IP addresses assigned to all network interfaces. Provides detailed information about the IP addresses, including subnet masks and interface status. The `>>` command saves this output into the `results/layer3_network.txt.
4. `ip -br address show >> results/layer3_network.txt`: The `ip -br address show` command displays IP addresses assigned to all network interfaces in a brief format. The `-br` (brief) option provides a concise summary of the IP addresses. The `>>` command saves this output into the `results/layer3_network.txt.
5. `ip route show >> results/layer3_network.txt`: The `ip route show` command displays the current routing table. Shows the paths that network traffic takes to reach different IP addresses or networks. The `>>` command saves this output into the `results/layer3_network.txt.
6. `traceroute google.com >> results/layer3_network.txt`: The `traceroute` command shows the route packets take to reach `google.com`. The `>>` command saves this output into the `results/layer3_network.txt.
7. `ping -c 10 google.com >> results/layer3_network.txt`: The `ping` command sends 10 ICMP echo requests to `google.com`. The `-c 10` option specifies the number of echo requests to send. This command helps to check connectivity and measure round-trip time. The `>>` command saves this output into the `results/layer3_network.txt.
8. `dig www.google.com >> results/layer3_network.txt`: The `dig` command performs a DNS lookup for `www.google.com`. The `dig` command queries DNS servers to resolve domain names to IP addresses. It provides detailed information about DNS queries. The `>>` command saves this output into the `results/layer3_network.txt.
9. `arp-scan -I enp0s3 -l >> results/layer3_network.txt`: The `arp-scan` command scans the local network for devices using ARP. The `-I enp0s3` option specifies the network interface to use. The `-l` option scans the local network. The `>>` command saves this output into the `results/layer3_network.txt.
10. `echo "Results saved in results/layer3_network.txt"`: Confirms that results have been saved.

### Network Troubleshooting on Transport Layer (`layer4_transport.sh`)

#### Explanation:

1. `#!/bin/bash`: Shebang line for Bash.
2. `mkdir -p results`: Creates the results directory if it doesn't exist.
3. `netstat -tulnp >> results/layer4_transport.txt`: The `netstat -tulnp` command displays active TCP/UDP connections and listening ports with process IDs. The `>>` command saves this output into the `/results/layer4_transport.txt`. The options `-tulnp` means:
    - `-t`: TCP
    - `-u`: UDP
    - `-l`: Listening
    - `-n`: Show numerical addresses
    - `-p`: Show process ID and name
4. `ss -tulnp >> results/layer4_transport.txt`: Similar to `netstat -tulnp`, but `ss -tulnp` provides more detailed and faster output for active TCP/UDP connections and listening ports with process IDs. The `>>` command saves this output into the `/results/layer4_transport.txt`.
5. `nc -zv google.com 80 >> results/layer4_transport.txt 2>&1`: This uses `nc` (netcat) to test a TCP connection to google.com on port 80. The `>>` command saves this output into the `/results/layer4_transport.txt`. `2>&1` redirects standard error (stderr) to standard output (stdout), so both are written to the file. The options `-zv` means:
    - `-z`: Zero-I/O mode (used for scanning)
    - `-v`: Verbose mode
6. `echo "Results saved in results/layer4_transport.txt"`: Confirms that results have been saved.

### Network Troubleshooting on Session Layer (`layer5_session.sh`)

#### Explanation:

1. `#!/bin/bash`: Shebang line for Bash.
2. `mkdir -p results`: Creates the results directory if it doesn't exist.
3. `netstat -an | grep ESTABLISHED >> results/layer5_session.txt`: The `netstat -an` command lists all network connections and their statuses. Piping (`|`) this output through `grep ESTABLISHED` filters it to show only established sessions. The `>>` command saves this output into the `results/layer5_session.txt`.
4. `echo "Results saved in results/layer5_session.txt"`: Confirms that results have been saved.

### Network Troubleshooting on Presentation Layer (`layer6_presentation.sh`)

#### Explanation:

1. `#!/bin/bash`: Shebang line for Bash.
2. `mkdir -p results`: Creates the results directory if it doesn't exist.
3. `echo | openssl s_client -showcerts -servername google.com -connect google.com:443 >> results/layer6_presentation.txt`: This uses `openssl` to connect to `google.com` on `port 443` and show the SSL certificate chain. The `>>` command saves this output into the `results/layer6_presentation.txt`.
4. `echo "Results saved in results/layer6_presentation.txt"`: Confirms that results have been saved.

### Network Troubleshooting on Application Layer (`layer7_application.sh`)

#### Explanation:

1. `#!/bin/bash`: Shebang line for Bash.
2. `mkdir -p results`: Creates the results directory if it doesn't exist.
3. `curl -I http://google.com >> results/layer7_application.txt`: The `curl -I` command sends an HTTP HEAD request to `google.com` and retrieves the HTTP headers. The `>>` command saves this output into the `results/layer7_application.txt`.
4. `echo "Results saved in results/layer7_application.txt"`: Confirms that results have been saved.
