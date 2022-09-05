class A{
	int i;
	void display(){
	System.out.println("Class A");

	}
}

public class DemoA ecxtends A{
	int j;
	void display(){
	System.out.println("Class DemoA");

	}

	public static void main(String[] args){
	DemoA a = new DemoA();
	a.display();
	A oa = new A();
	oa.display();
	}
}