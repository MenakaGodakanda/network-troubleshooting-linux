#!/bin/bash
# Layer 4: Transport Layer Troubleshooting

echo "---Layer 4: Transport Layer Troubleshooting---" | tee results/layer4_transport.txt
echo -e "--------------------Start Transport Layer Troubleshooting--------------------\n" >> results/layer4_transport.txt

# Create results directory if it doesn't exist
mkdir -p results

# Check open ports and listening services
echo "Checking open ports and listening services..." | tee -a results/layer4_transport.txt
netstat -tulnp >> results/layer4_transport.txt
echo -e "----------------------------------------\n" >> results/layer4_transport.txt

# Check correct IP/ports are open
echo "Checking correct IP/ports are open..." | tee -a results/layer4_transport.txt
ss -tulnp >> results/layer4_transport.txt
echo -e "----------------------------------------\n" >> results/layer4_transport.txt

echo "Running nc to test TCP connection to google.com:80..." | tee -a results/layer4_transport.txt
nc -zv google.com 80 >> results/layer4_transport.txt 2>&1
echo -e "----------------------------------------\n" >> results/layer4_transport.txt

echo -e "--------------------End Transport Layer Troubleshooting--------------------\n" >> results/layer4_transport.txt
echo "Results saved in results/layer4_transport.txt"
