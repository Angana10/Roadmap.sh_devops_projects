#!/bin/bash

# A simple tool to analyze logs from the command line.

echo "The stats are as follows"

echo -e "\nTop 5 IP addresses with the most requests:"
awk '{print $1}' nginx-access.log | sort | uniq -c | sort -nr | head -n 5 | awk '{print $2 " - " $1 " requests"}'

echo -e "\nTop 5 most requested paths:"
awk '{print $7}' nginx-access.log | sort | uniq -c | sort -nr | head -n 5 | awk '{print $2 " - " $1 " requests"}'

echo -e "\nTop 5 response status codes:"
grep -oE ' [1-5][0-9]{2}' nginx-access.log | sort | uniq -c | sort -nr | head -n 5 |
awk '{print $2 " - " $1 " requests"}'

echo -e "\nTop 5 user agents:"
awk -F\" '{print $6}' nginx-access.log | sort | uniq -c | sort -nr | head -n 5 | awk '{count=$1; $1=""; print substr($0,2) " - " count " requests"}'
