from ftplib import FTP 
import sys

ftp = FTP("130.203.157.226", "jun", "123")
ftp.cwd("/home/jun/straight-DTA/vsftpd-2.2.2/test")

with open('../../genFile/file_10MB') as f:
#with open('client.txt') as f:
	ftp.storlines('STOR server.txt', f)
#with open('client2.txt') as f:
#	ftp.storlines('STOR server2.txt', f)
ftp.quit()
