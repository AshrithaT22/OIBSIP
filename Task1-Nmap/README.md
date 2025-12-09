Task 1 -- Basic Network Scan using Nmap

Objective
To identify open ports and running services on a target system using Nmap.

Commands Used

nmap 192.168.0.107 -- For Basic Scan
nmap -sV 192.168.0.107 -- For Service with Version Scan
nmap -sC 192.168.0.107 -- For Default Script Scan
nmap -sV -sC 192.168.0.107 -oN nmap_scan_results.txt -- To save outputs of -sV and -sC

File Included
- nmap_scan_results.txt
- scan.sh

Summary 
This scan identifies:
-Open ports
-Version of services
-Possible vulnerabilities

