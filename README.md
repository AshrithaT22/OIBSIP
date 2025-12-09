Task 7: Vulnerability Scanning with Nikto

This task is part of the Oasis Infobyte Cybersecurity Internship. The objective is to perform a vulnerability
scan using Nikto, identify security issues on a local web server, and document the findings.

1. Overview
Nikto is an open source web server scanner used to detect:
-Misconfigurations
-Dangerous files/directories
-Outdated server versions
-Missing security headers
-Potential vulnerabilities
In this task, I performed a scan on http://localhost (Apache server running on kali linux).

2. Tools used
-Nikto v2.5 -- Web server vulnerability scanning
-Apache2 -- Local web server for testing
-Kali Linux -- Operating system

3. Commands used
- sudo apt update 
- sudo apt install nikto -y
- sudo systemctl start apache2
- nikto -h http://localhost -o nikto_scan_results.txt
- cat nikto_scan_results.txt

4. Scan Target
- Target: http://localhost
- IP: 127.0.0.1
- Server: Apache/2.4.65(Debian)

5.Vulnerabilites Found

-Missing X-Frame-Options Header : Allows clickjacking attacks.
Fix:
 Header always append X-Frame-Options SAMEORIGIN


-Missing X-Content-Type-Options Header : Browser may MIME-sniff files -> leads to code execution.
Fix:
 Header set X-Content-Type-Options nosniff


-Server Version Disclosure : Server header shows [Apache/2.4.65 (Debian)]. Attackers can exploit known 
vulnerabilities for that version.
Fix: 
 ServerTokens Prod
 ServerSignature Off


-ETag Leakage : ETags can help fingerprint server or bypass caches.
Fix:
 FileETah None

-Allowed HTTP Methods: GET,POST,OPTIONS,HEAD : Not dangerous by default,but OPTIONS can reveal server capabilities.
Fix: 
 RewriteEngine On
 RewriteCond %{REQUEST_METHOD} OPTIONS
 RewriteRule ^(.*)$ $1 [R=405,L]


- /server-status is accessible: Reveals sensitive internal info:
Active connections,
Running processes,
Client IPs

Fix:
 <Directory "/server-status">
     Require local
 </Directory>

6.Output Files
-nikto_scan_results.txt : Full scanner output
-README.md : Documentation


7.Conclusion
This task demonstarates how Nikto can quickly identify common vulnerabilities and 
misconfigurations on a web server.
The scan revealed multiple issues including missing security header,exposed server
information, and accessible server-status pages--all of which can be fixed through proper
server hardening. 
Nikto is an essential tool for initial web reconnaissance and vulnerability assessment.






















