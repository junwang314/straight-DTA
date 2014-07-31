from ftplib import FTP 
import sys
from datetime import datetime
import multiprocessing
import time

def timeStr():
    str1=str(datetime.now())
    str1spl=str1.split()
    return str1spl[1]

def client(cycle, fileList):
    print "a new session"
    ftp = FTP("130.203.157.226", "jun", "123")
    ftp.cwd("upload")
    for i in range(cycle):
        for fileName in fileList:
	    with open(fileName) as f:
#	        ftp.storlines("STOR "+fileName+"."+timeStr(), f)
	        ftp.storlines("STOR "+fileName, f)
                print i,fileName	
		time.sleep(1)
    ftp.quit()

def main(session, cycle, fileList):
    jobs = []
    for i in range(session):
        p = multiprocessing.Process(target=client,args=(cycle, fileList))
	jobs.append(p)
	p.start()

if len(sys.argv)<3:
    print "usage: python client.py session cycle"
    exit()
session=int(sys.argv[1])
cycle=int(sys.argv[2])
#fileList=["file_1MB","file_2MB","file_3MB", "file_4MB", "file_5MB", "file_10MB"]
#fileList=["file_1MB","file_2MB","file_3MB", "file_4MB", "file_5MB", "file_10MB","file_20MB","file_50MB"]
#fileList=["file_36KB"]
fileList=["file_10KB",  "file_20KB" , "file_50KB" , "file_100KB" , "file_1000KB" ]
main(session, cycle, fileList)
