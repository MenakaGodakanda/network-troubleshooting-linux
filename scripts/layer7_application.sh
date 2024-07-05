#!/bin/bash
# Layer 7: Application Layer Troubleshooting

echo "---Layer 7: Application Layer Troubleshooting---" | tee results/layer7_application.txt
echo -e "--------------------Start Application Layer Troubleshooting--------------------\n" >> results/layer7_application.txt

# Create results directory if it doesn't exist
mkdir -p ../results

# Check HTTP service with curl
echo "Checking HTTP service for google.com..." | tee -a results/layer7_application.txt
curl -I http://google.com >> results/layer7_application.txt
echo -e "----------------------------------------\n" >> results/layer7_application.txt

echo -e "--------------------End Application Layer Troubleshooting--------------------\n" >> results/layer7_application.txt
echo "Results saved in results/layer7_application.txt"
