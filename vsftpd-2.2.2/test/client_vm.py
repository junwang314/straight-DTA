from ftplib import FTP 
import sys

ftp = FTP("130.203.157.226", "jun", "123")
#ftp = FTP("localhost", "jun", "123")
ftp.cwd("straight-DTA/vsftpd-2.2.2/test")
with open('client.txt') as f:
    ftp.storlines('STOR secrete_vm', f)
ftp.quit()
