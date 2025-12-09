#!/bin/bash

TARGET=$1

echo "[*] Running Nmap scan on $TARGET ..."
nmap -sV -sC $TARGET -oN nmap_scan_results.txt
echo "[+] Scan complete. Results saved to nmap_scan_results.txt"
