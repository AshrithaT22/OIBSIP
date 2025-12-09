Task 3 -- SQL Injection (DVWA Low Security)

Objective

To demonstrate an SQL Injection Vulnerability in DVWA with security level set to Low.

Steps Performed
1. Installed DVWA and logged into the portal
2. Set DVWA security level to Low
3. Navigated to the SQL Injection module
4. Entered the payload:  1' OR '='1
5. The application displayed user data,confirming SQL Injection

Why This Works

DVWA inserts the input directly into an SQL query without:
1. input validation
2. escaping quotes
3. parameterized querirs

This allows an attackers to modify the query, bypass authentication, and dump data.

Fix
1. Use prepared statements
2. Validate user input
3. Escape special characters
4. Never trust client input

Files Included
-sql_injection_exploit.sh
-payloads.txt

 
