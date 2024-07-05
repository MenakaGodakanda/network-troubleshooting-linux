#!/bin/bash
# Layer 1: Physical Layer Troubleshooting

echo "---Layer 1: Physical Layer Troubleshooting---" | tee results/layer1_physical.txt
echo -e "----------------------------------------\n" >> results/layer1_physical.txt

# Create results directory if it doesn't exist
mkdir -p results

# Check network interface status
echo "Checking network interface status..." | tee -a results/layer1_physical.txt
ip link show >> results/layer1_physical.txt
echo -e "----------------------------------------\n" >> results/layer1_physical.txt

# Check physical link
echo "Checking the physical link..." | tee -a results/layer1_physical.txt
ip -br link show >> results/layer1_physical.txt
echo -e "----------------------------------------\n" >> results/layer1_physical.txt

# Examine packet count statistics
echo "Examining packet count statistics..." | tee -a results/layer1_physical.txt
ip -s link show enp0s3 >> results/layer1_physical.txt
echo -e "----------------------------------------\n" >> results/layer1_physical.txt

# Check link properties
echo "Checking link properties are valid..." | tee -a results/layer1_physical.txt
ethtool enp0s3 >> results/layer1_physical.txt
echo -e "----------------------------------------\n" >> results/layer1_physical.txt

echo -e "--------------------End Physical Layer Troubleshooting--------------------\n" >> results/layer1_physical.txt
echo "Results saved in results/layer1_physical.txt"
