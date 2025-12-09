Task 2: Basic Firewall Configuration with UFW

Overview
The aim is to configure a basic firewall on a Linux system using UFW(Uncomplicated Firewall). 
The objectives were:
-Install UFW
-Allow SSH
-Deny HTTP
-Enable firewall
-Verify the active rules

Steps Performed
1. Install UFW :
 sudo apt update
 sudo apt install ufw -y


2. Allow SSH
 sudo ufw allow ssh


3. Deny HTTP
 sudo ufw deny http


4. Enable the Firewall
 sudo ufw enable


5. Check Status of Rules
 sudo ufw status numbered

This displays all active firewall rules.


Files included
- ufw_configuration.sh
- ufw_status_output.txt

Conclusion
UFW was successfully installed and configured.
SSH traffic is allowed, HTTP traffic is denied, and the firewall is active with correct rules applied.
