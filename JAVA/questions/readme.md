### Why is the Java main method public?

Java main() method. public: It is an access specifier. We should use a public keyword before the main() method so that JVM can identify the execution point of the program. If we use private, protected, and default before the main() method, it will not be visible to JVM.

### Why main method is public static void main in Java?
There is no object of the class existing when the Java runtime starts. This is why the main() method must be static for the JVM to load the class into memory and call the main function. If the main method is not static, JVM will be unable to call it since no object of the class is present.

We create the main() method as static so that JVM can load the class into the main memory. The main() method is the entry point of each and every Java program. The main() method is required because the compiler starts executing a program from this entry point.

### Why Main in Java is declared as public static void main What if the main method is declared as private?
Since the main method in Java is not supposed to return any value, it's made void which simply means main is not returning anything. Summary: 1. The main method must be declared public, static and void in Java otherwise, JVM will not able to run Java program.

### What is a Static Method in Java? 
A static method is a method that belongs to a class rather than an instance of a class. This means you can call a static method without creating an object of the class. Static methods are sometimes called class methods.