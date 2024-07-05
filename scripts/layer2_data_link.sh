#!/bin/bash
# Layer 2: Data Link Layer Troubleshooting

echo "---Layer 2: Data Link Layer Troubleshooting---" | tee results/layer2_data_link.txt
echo -e "----------------------------------------\n" >> results/layer2_data_link.txt

# Create results directory if it doesn't exist
mkdir -p results

# Check for MAC address and errors
echo "Checking MAC address and errors..." | tee -a results/layer2_data_link.txt
ifconfig -a >> results/layer2_data_link.txt
echo -e "----------------------------------------\n" >> results/layer2_data_link.txt

# Check the default gateway
echo "Checking the default gateway..." | tee -a results/layer2_data_link.txt
ip neighbor show >> results/layer2_data_link.txt
echo -e "----------------------------------------\n" >> results/layer2_data_link.txt

echo -e "--------------------End Data Link Layer Troubleshooting--------------------\n" >> results/layer2_data_link.txt
echo "Results saved in results/layer2_data_link.txt"
