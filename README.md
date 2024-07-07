# Network Troubleshooting on Linux (OSI Layers)

This project demonstrates network troubleshooting techniques on Linux based on the OSI model. Each OSI layer is addressed with specific tools and commands to diagnose and resolve network issues.<br>
<a href="https://github.com/MenakaGodakanda/network-troubleshooting-linux/blob/main/Project_Description.md">Project Description</a>

## Overview

<img width="956" alt="Screenshot 2024-07-05 at 2 50 13 PM" src="https://github.com/MenakaGodakanda/network-troubleshooting-linux/assets/156875412/c3503e76-b3b2-4806-acfa-67ded0f38f08">

### Explanation:
#### Layer 1: Physical
- The Physical Layer is responsible for the physical connection between devices. It deals with the transmission and reception of raw bitstreams over a physical medium
- `layer1_physical.sh`:
    - Checks the network interface status.
    - Check physical link.
    - Examine packet count statistics.
    - Check link properties.
- Output of `layer1_physical.sh` script is saved in the results directory as `layer1_physical.txt`.

#### Layer 2: Data Link
- The Data Link Layer handles error detection and correction from the Physical Layer. It provides node-to-node data transfer and manages access to the physical medium.
- `layer2_data_link.sh`:
    - Checks MAC address and errors.
    - Check the default gateway.
- Output of `layer2_data_link.sh` script is saved in the results directory as `layer2_data_link.txt`.

#### Layer 3: Network
- The Network Layer is responsible for logical addressing, routing, and forwarding packets. It determines the best path for data to travel across a network.
- `layer3_network.sh`:
    - Check IP configuration and route.
    - Check valid IP address.
    - Check routes and default gateway.
    - Check routing path to `google.com`.
    - Check `google.com` is reachable.
    - Check default dns server.
    - Check any IP address conflict.
- Output of `layer3_network.sh` script is saved in the results directory as `layer3_network.txt`.

#### Layer 4: Transport
- The Transport Layer ensures complete data transfer and error recovery. It provides reliable data transfer services to the upper layers.
- `layer4_transport.sh`:
    - Check open ports and listening services.
    - Check correct IP/ports are open.
    - Check TCP open on a remote host at `google.com`.
- Output of `layer4_transport.sh` script is saved in the results directory as `layer4_transport.txt`.

#### Layer 5: Session
- The Session Layer manages and controls the connections between computers. It establishes, maintains, and terminates connections between applications.
- `layer5_session.sh`:
    - Checks established sessions.
- Output of `layer5_session.sh` script is saved in the results directory as `layer5_session.txt`.

#### Layer 6: Presentation
- The Presentation Layer translates data between the application layer and the network. It handles data encryption, compression, and translation.
- `layer6_presentation.sh`:
    - Checks encoding and encryption (example with SSL certificates).
- Output of `layer6_presentation.sh` script is saved in the results directory as `layer6_presentation.txt`.

#### Layer 7: Application
- The Application Layer is the closest layer to the end-user. It provides network services directly to applications (e.g., web browsers, email clients).
- `layer7_application.sh`:
    - Checks HTTP service availability.
- Output of `layer7_application.sh` script is saved in the results directory as `layer7_application.txt`.

## Setting Up the Project

### 1. Clone the repository:
```bash
git clone https://github.com/MenakaGodakanda/network-troubleshooting-linux.git
cd network-troubleshooting-linux
```

### 2. Install Tools:
- **ip**: The `ip` command is part of the `iproute2` package, which is typically installed by default on most Linux distributions. If not already installed, you can install it using:
    ```bash
    sudo apt-get install iproute2
    ```
- **ifconfig**: The `ifconfig` command is part of the `net-tools` package. It shows detailed information about all or specific network interfaces, including IP addresses, MAC addresses, netmask, broadcast address, and interface status (up or down).
    ```bash
    sudo apt-get install net-tools
    ```
- **ethtool**: `ethtool` is a utility for querying and changing network interface driver and hardware settings.
    ```bash
    sudo apt-get install ethtool
    ```
- **traceroute**: `traceroute` tracks the route packets take to a network host.
    ```bash
    sudo apt-get install traceroute
    ```
- **ping**: `ping` is used to check the reachability of a host on an IP network. `ping` is part of the `iputils-ping` package, which is typically installed by default.
    ```bash
    sudo apt-get install iputils-ping
    ```
- **dig**: `dig` is a DNS lookup utility. `dig` is part of the `dnsutils` package.
    ```bash
    sudo apt-get install dnsutils
    ```
- **arp-scan**: `arp-scan` is a utility for scanning the local network for devices.
    ```bash
    sudo apt-get install arp-scan
    ```
- **netstat**: `netstat` displays network connections, routing tables, interface statistics, masquerade connections, and multicast memberships. It is part of the `net-tools` package.
    ```bash
    sudo apt-get install net-tools
    ```
- **ss**: `ss` is a utility to investigate sockets. `ss` is part of the `iproute2` package, which is typically installed by default.
    ```bash
    sudo apt-get install iproute2
    ```
- **nc (netcat)**: `nc`, or netcat, is a versatile networking tool used for reading from and writing to network connections using TCP or UDP.
    ```bash
    sudo apt-get install netcat
    ```
- **curl**: `curl` is a command-line tool for transferring data with URLs.
    ```bash
    sudo apt-get install curl
    ```

### 3. Make the scripts executable:
```bash
chmod +x scripts/*.sh
```

## Run the Desired script:

### Identify Network Interface

The scriptings of this project used `enp0s3` as the network interface. Identify the network interface of your computer (such as `eth0` and `lo`) by simply running `ifconfig` and replacing the required network interface in the scripts. For examples:
```
ip -s link show <network-interface> >> results/layer1_physical.txt
ethtool <network-interface> >> results/layer1_physical.txt
arp-scan -I <network-interface> -l >> results/layer3_network.txt
```

### Layer 1: Physical Layer
Run the `layer1_physical.sh` script:
```bash
sudo ./scripts/layer1_physical.sh
```
![Screenshot 2024-07-05 151447](https://github.com/MenakaGodakanda/network-troubleshooting-linux/assets/156875412/da369700-7655-49b2-9c51-bfdabe261fb7)

#### Layer 2: Data Link Layer
Run the `layer2_data_link.sh` script:
```bash
sudo ./scripts/layer2_data_link.sh
```
![Screenshot 2024-07-05 151527](https://github.com/MenakaGodakanda/network-troubleshooting-linux/assets/156875412/42c93173-c507-4aee-a6db-b36db6200bc8)

### Layer 3: Network Layer
Run the `layer3_network.sh` script:
```bash
sudo ./scripts/layer3_network.sh
```
![Screenshot 2024-07-05 151621](https://github.com/MenakaGodakanda/network-troubleshooting-linux/assets/156875412/e598705f-e315-428a-aae2-6ce69f0e2022)

### Layer 4: Transport Layer
Run the `layer4_transport.sh` script:
```bash
sudo ./scripts/layer4_transport.sh
```
![Screenshot 2024-07-05 151632](https://github.com/MenakaGodakanda/network-troubleshooting-linux/assets/156875412/bd14adf2-3b67-4371-8c59-7d164b118df9)

#### Layer 5: Session Layer
Run the `layer5_session.sh` script:
```bash
sudo ./scripts/layer5_session.sh
```
![Screenshot 2024-07-05 151655](https://github.com/MenakaGodakanda/network-troubleshooting-linux/assets/156875412/81e97cea-b2de-4248-9313-72a6ac35ea70)

### Layer 6: Presentation Layer
Run the `layer6_presentation.sh` script:
```bash
sudo ./scripts/layer6_presentation.sh
```
![Screenshot 2024-07-05 151718](https://github.com/MenakaGodakanda/network-troubleshooting-linux/assets/156875412/b89e1762-490d-4b75-a558-4918d091e085)

### Layer 7: Application Layer
Run the `layer7_application.sh` script:
```bash
sudo ./scripts/layer7_application.sh
```
![Screenshot 2024-07-05 151741](https://github.com/MenakaGodakanda/network-troubleshooting-linux/assets/156875412/3492afca-8c2f-4065-a163-00c0bad3949b)

## Check the Results
Check the results in the `results` directory. Each script has generated report as below: <br><br>
![Screenshot 2024-07-07 031528](https://github.com/MenakaGodakanda/network-troubleshooting-linux/assets/156875412/197cfb88-293e-41e4-82d3-386998076d03)

## Project Structure
```
network-troubleshooting-linux
├── README.md
├── scripts
│   ├── layer1_physical.sh
│   ├── layer2_data_link.sh
│   ├── layer3_network.sh
│   ├── layer4_transport.sh
│   ├── layer5_session.sh
│   ├── layer6_presentation.sh
│   └── layer7_application.sh
└── results
    ├── layer1_physical.txt
    ├── layer2_data_link.txt
    ├── layer3_network.txt
    ├── layer4_transport.txt
    ├── layer5_session.txt
    ├── layer6_presentation.txt
    └── layer7_application.txt
```

## License
This project is licensed under the MIT License.
