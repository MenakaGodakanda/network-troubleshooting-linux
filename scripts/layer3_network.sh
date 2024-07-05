#!/bin/bash
# Layer 3: Network Layer Troubleshooting

echo "---Layer 3: Network Layer Troubleshooting---" | tee results/layer3_network.txt
echo -e "--------------------Start Network Layer Troubleshooting--------------------\n" >> results/layer3_network.txt

# Create results directory if it doesn't exist
mkdir -p ../results

# Check IP configuration and route
echo "Checking IP configuration..." | tee -a results/layer3_network.txt
ip addr show >> results/layer3_network.txt
echo -e "----------------------------------------\n" >> results/layer3_network.txt

# Check valid IP address
echo "Checking valid IP address..." | tee -a results/layer3_network.txt
ip -br address show >> results/layer3_network.txt
echo -e "----------------------------------------\n" >> results/layer3_network.txt

# Check routes and default gateway
echo "Checking routes and default gateway..." | tee -a results/layer3_network.txt
ip route show >> results/layer3_network.txt
echo -e "----------------------------------------\n" >> results/layer3_network.txt

# Check routing path to google.com
echo "Checking routing path to google.com..." | tee -a results/layer3_network.txt
traceroute google.com >> results/layer3_network.txt
echo -e "----------------------------------------\n" >> results/layer3_network.txt

# Check google.com is reachable
echo "Checking google.com is reachable..." | tee -a results/layer3_network.txt
ping -c 10 google.com >> results/layer3_network.txt
echo -e "----------------------------------------\n" >> results/layer3_network.txt

# Check default dns server
echo "Checking default dns server..." | tee -a results/layer3_network.txt
dig www.google.com >> results/layer3_network.txt
echo -e "----------------------------------------\n" >> results/layer3_network.txt

# Check any IP address conflict
echo "Checking any IP address conflict..." | tee -a results/layer3_network.txt
arp-scan -I enp0s3 -l >> results/layer3_network.txt
echo -e "----------------------------------------\n" >> results/layer3_network.txt

echo -e "--------------------End Network Layer Troubleshooting--------------------\n" >> results/layer3_network.txt
echo "Results saved in results/layer3_network.txt"
