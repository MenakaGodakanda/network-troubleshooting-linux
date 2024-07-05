#!/bin/bash
# Layer 5: Session Layer Troubleshooting

echo "---Layer 5: Session Layer Troubleshooting---" | tee results/layer5_session.txt
echo -e "--------------------Start Session Layer Troubleshooting--------------------\n" >> results/layer5_session.txt

# Create results directory if it doesn't exist
mkdir -p ../results

# Check established sessions using netstat
echo "Checking established sessions..." | tee -a results/layer5_session.txt
netstat -an | grep ESTABLISHED >> results/layer5_session.txt
echo -e "----------------------------------------\n" >> results/layer5_session.txt

echo -e "--------------------End Session Layer Troubleshooting--------------------\n" >> results/layer5_session.txt
echo "Results saved in results/layer5_session.txt"
