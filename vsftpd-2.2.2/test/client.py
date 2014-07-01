from ftplib import FTP 
import sys

argv=sys.argv[1]
argv=int(argv)
i=0
while i<argv:
    ftp = FTP("130.203.157.226", "jun", "123")
   # ftp = FTP("localhost", "jun", "123")
    ftp.cwd("straight-DTA/vsftpd-2.2.2/test")
#    print i
    for j in range(100):
        with open('client.txt') as f:
            ftp.storlines('STOR server.txt', f)
    ftp.quit()
    i=i+1
