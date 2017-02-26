#include<iostream>
#include<fstream>
using namespace std;

int main(){
	ifstream pdf("fs/doc.pdf");
	cout<<pdf.rdbuf();
	return 0;
}
