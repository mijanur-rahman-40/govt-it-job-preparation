package JAVA.questions.PREVIOUS_YEAR.OF_IT_21_09_NO;

public class Circle {
    double x, y, radious;

    Circle(double x, double y, double radious) {
        this.x = x;
        this.y = y;
        this.radious = radious;
    }

    double getPerimeter() {
        return 2 * Math.PI * radious;
    }

    double getArea() {
        return Math.PI * radious * radious;
    }

    String printCircle() {
        return "(" + x + ", " + y + ") position.";
    }

    void translate(double dx, double dy) {
        x += dx;
        y += dy;
    }

    public static void main(String[] args) {
        Circle circle = new Circle(0, 3, 10);

        System.out.println("Before translation, Circle at " + circle.printCircle());

        System.out.println("Circle perimeter : " + String.format("%.2f", circle.getPerimeter()));
        System.out.println("Circle area : " + String.format("%.2f", circle.getArea()));

        circle.translate(3, 4);
        System.out.println("After translation, Circle at " + circle.printCircle());

    }
}