# Network Troubleshooting on Linux (OSI Layers)

This project demonstrates network troubleshooting techniques on Linux based on the OSI model. Each OSI layer is addressed with specific tools and commands to diagnose and resolve network issues.

## Overview

<img width="956" alt="Screenshot 2024-07-05 at 2 50 13 PM" src="https://github.com/MenakaGodakanda/network-troubleshooting-linux/assets/156875412/c3503e76-b3b2-4806-acfa-67ded0f38f08">

### Explanation:
#### Layer 1: Physical
- The Physical Layer is responsible for the physical connection between devices. It deals with the transmission and reception of raw bitstreams over a physical medium
- `layer1_physical.sh`: Checks the network interface status.
- Output of `layer1_physical.sh` script is saved in the results directory as `layer1_physical.txt`.

#### Layer 2: Data Link
- The Data Link Layer handles error detection and correction from the Physical Layer. It provides node-to-node data transfer and manages access to the physical medium.
- `layer2_data_link.sh`: Checks MAC address and errors.
- Output of `layer2_data_link.sh` script is saved in the results directory as `layer2_data_link.txt`.

#### Layer 3: Network
- The Network Layer is responsible for logical addressing, routing, and forwarding packets. It determines the best path for data to travel across a network.
- `layer3_network.sh`: Checks IP configuration, routing, and runs a traceroute.
- Output of `layer3_network.sh` script is saved in the results directory as `layer3_network.txt`.

#### Layer 4: Transport
- The Transport Layer ensures complete data transfer and error recovery. It provides reliable data transfer services to the upper layers.
- `layer4_transport.sh`: Checks open ports and services, and tests TCP connections.
- Output of `layer4_transport.sh` script is saved in the results directory as `layer4_transport.txt`.

#### Layer 5: Session
- The Session Layer manages and controls the connections between computers. It establishes, maintains, and terminates connections between applications.
- `layer5_session.sh`: Checks established sessions.
- Output of `layer5_session.sh` script is saved in the results directory as `layer5_session.txt`.

#### Layer 6: Presentation
- The Presentation Layer translates data between the application layer and the network. It handles data encryption, compression, and translation.
- `layer6_presentation.sh`: Checks encoding and encryption (example with SSL certificates).
- Output of `layer6_presentation.sh` script is saved in the results directory as `layer6_presentation.txt`.

#### Layer 7: Application
- The Application Layer is the closest layer to the end-user. It provides network services directly to applications (e.g., web browsers, email clients).
- `layer7_application.sh`: Checks HTTP service availability.
- Output of `layer7_application.sh` script is saved in the results directory as `layer7_application.txt`.

## Setting Up the Project

1. Clone the repository:
```bash
git clone https://github.com/MenakaGodakanda/network-troubleshooting-linux.git
cd network-troubleshooting-linux
```

2. Install Tools:
- **ping**: `ping` is a network utility used to test the reachability of a host on an IP network. It also measures the round-trip time for messages sent from the originating host to a destination computer.
- **traceroute**: `traceroute` is a network diagnostic tool used to track the pathway packets take from one IP address to another. It helps in identifying the route and measuring transit delays of packets.
- **tcpdump**: `tcpdump` is a packet analyzer tool that captures and displays the traffic passing through a network interface. It provides detailed insights into the packets being transmitted and received.
- **netstat**: `netstat` is a network statistics utility that displays network connections, routing tables, interface statistics, masquerade connections, and multicast memberships.
- **nc (netcat)**: `nc`, or netcat, is a versatile networking tool used for reading from and writing to network connections using TCP or UDP. It can be used for port scanning, transferring files, and testing network connectivity.
- **curl**: `curl` is a command-line tool used for transferring data with URLs. It supports various protocols including HTTP, HTTPS, FTP, and more. It's often used for testing and interacting with web services.
- **arp-scan**: `arp-scan` is a network scanning tool used to discover all the devices connected to a network. It sends ARP requests to all possible IP addresses on the local network and listens for responses.

```bash
ping, traceroute, tcpdump, netstat, nc, curl
sudo apt install arp-scan
```

3. Make the scripts executable:
```bash
chmod +x scripts/*.sh
```

## Run the Desired script:

### Layer 1: Physical Layer
Run the `layer1_physical.sh` script:
```bash
sudo ./scripts/layer1_physical.sh
```

#### Layer 2: Data Link Layer
Run the `layer2_data_link.sh` script:
```bash
sudo ./scripts/layer2_data_link.sh
```

### Layer 3: Network Layer
Run the `layer3_network.sh` script:
```bash
sudo ./scripts/layer3_network.sh
```

### Layer 4: Transport Layer
Run the `layer4_transport.sh` script:
```bash
sudo ./scripts/layer4_transport.sh
```

#### Layer 5: Session Layer
Run the `layer5_session.sh` script:
```bash
sudo ./scripts/layer5_session.sh
```

### Layer 6: Presentation Layer
Run the `layer6_presentation.sh` script:
```bash
sudo ./scripts/layer6_presentation.sh
```

### Layer 7: Application Layer
Run the `layer7_application.sh` script:
```bash
sudo ./scripts/layer7_application.sh
```

## Check the Results
Check the results in the results directory.

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
