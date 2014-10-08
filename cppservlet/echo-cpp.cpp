#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include "stdlib.h"

#include <iostream>
#include "fcgio.h"
#include <fstream>
#include <sstream>
using namespace std;

bool a2pdf(string fname, string path){
	string pathname=path+fname;
    if(access(pathname.c_str(), F_OK)==-1){
	    return false;
    }

	string a2ps("a2ps ");
	a2ps=a2ps+pathname+" -o "+pathname+".ps";
	
	if(system(a2ps.c_str())!=0){
		return false;
	}

	string ps2pdf("gs -sDEVICE=pdfwrite -dBATCH -dNOPAUSE -dQUIET -dSAFER -sOutputFile=");
	ps2pdf=ps2pdf+pathname+".pdf "+pathname+".ps";
	if(system(ps2pdf.c_str())!=0){
		return false;
	}
	return true;
}

int pdf2out(int fd, ostringstream &out){
	int ret=0;
	while(true){
		char buf[1024];
		int r;
		r=read(fd, buf, sizeof(buf));
		if(r==0)break;
		out.write(buf, r);
		ret+=r;
	}
	close(fd);
	return ret;
}

int main(void) {
    // Backup the stdio streambufs
    streambuf * cin_streambuf  = cin.rdbuf();
    streambuf * cout_streambuf = cout.rdbuf();
    streambuf * cerr_streambuf = cerr.rdbuf();

    FCGX_Request request;

    FCGX_Init();
    FCGX_InitRequest(&request, 0, 0);

    while (FCGX_Accept_r(&request) == 0) {
        fcgi_streambuf cin_fcgi_streambuf(request.in);
        fcgi_streambuf cout_fcgi_streambuf(request.out);
        fcgi_streambuf cerr_fcgi_streambuf(request.err);

        cin.rdbuf(&cin_fcgi_streambuf);
        cout.rdbuf(&cout_fcgi_streambuf);
        cerr.rdbuf(&cerr_fcgi_streambuf);

		cout<<"Content-Type: application/pdf\r\n";

		string path("/home/jun/straight-DTA/cppservlet/fs/");
		string fname("doc.txt");

		if(a2pdf(fname, path)){
			string pdfpathname=path+fname+".pdf";
			int fd=open(pdfpathname.c_str(), O_RDONLY);
			ostringstream out;
			int sz=pdf2out(fd, out);

			char size[32];
			sprintf(size, "%d", sz);
			string content_length=string("Content-Length: ")+size+"\r\n";

			cout<<content_length;
			cout<<"\r\n";

			cout<<out.str();
		}else{
		}
        // Note: the fcgi_streambuf destructor will auto flush
    }

    // restore stdio streambufs
    cin.rdbuf(cin_streambuf);
    cout.rdbuf(cout_streambuf);
    cerr.rdbuf(cerr_streambuf);

    return 0;
}

