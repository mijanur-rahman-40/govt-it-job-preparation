package InterfaceFunda;

interface Parent1 {
    void method1();
}

interface Parent2{
    void method2();
}

class Child implements Parent1, Parent2{
    public void method1(){
        System.out.println("Method1 implementation");
    }

    public void method2(){
        System.out.println("Method2 implementation");
    }
}

public class MultipleInheritance {
    public static void main(String[] args) {
        Child child = new Child();
        child.method1();
        child.method2();
    }
}