package InterfaceFunda;

interface Parent1 {
    void method1();

    default void log() {
        System.out.println("Parents1's log method");
    }
}

interface Parent2 {
    void method2();

    default void log() {
        System.out.println("Parents2's log method");
    }
}

class Child implements Parent1, Parent2 {
    public void method1() {
        System.out.println("Method1 implementation");
    }

    public void method2() {
        System.out.println("Method2 implementation");
    }

    public void log() {
        Parent1.super.log();
        Parent2.super.log();
    }
}

public class LeveragingDefaultMethods {
    public static void main(String[] args) {
        Child child = new Child();
        child.method1();
        child.method2();
        child.log();
    }
}
