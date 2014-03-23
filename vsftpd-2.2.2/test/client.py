from ftplib import FTP 

ftp = FTP("localhost", "jun", "123")
ftp.cwd("/home/jun/straight-DTA/vsftpd-2.2.2/test")

with open('client.txt') as f:
    ftp.storlines('STOR server.txt', f)

ftp.quit()

