from ftplib import FTP 
import sys

ftp = FTP("localhost", "jun", "123")
ftp.cwd("/home/jun/straight-DTA/vsftpd-2.2.2/test")

with open('client.txt') as f:
	ftp.storlines('STOR server.txt', f)
ftp.quit()

ftp = FTP("localhost", "jun", "123")
ftp.cwd("/home/jun/straight-DTA/vsftpd-2.2.2/test")

with open('client2.txt') as f:
	ftp.storlines('STOR server2.txt', f)
ftp.quit()
