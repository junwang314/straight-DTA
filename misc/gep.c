struct person{
	int age;
	int height;
	int weight;
//	char* name;
};

void main(){
	struct person p[5];
	//p[2]=(struct person*)malloc(sizeof(struct person));
	p[2].height=180;
}
