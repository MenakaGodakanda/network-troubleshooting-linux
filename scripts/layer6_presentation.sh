#!/bin/bash
# Layer 6: Presentation Layer Troubleshooting

echo "---Layer 6: Presentation Layer Troubleshooting---" | tee results/layer6_presentation.txt
echo -e "--------------------Start Presentation Layer Troubleshooting--------------------\n" >> results/layer6_presentation.txt

# Create results directory if it doesn't exist
mkdir -p ../results

# Check encoding and encryption (example with SSL certificates)
echo "Checking SSL certificate for google.com..." | tee -a results/layer6_presentation.txt
echo | openssl s_client -showcerts -servername google.com -connect google.com:443 >> results/layer6_presentation.txt
echo -e "----------------------------------------\n" >> results/layer6_presentation.txt

echo -e "--------------------End Presentation Layer Troubleshooting--------------------\n" >> results/layer6_presentation.txt
echo "Results saved in results/layer6_presentation.txt"
