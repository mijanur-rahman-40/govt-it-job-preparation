package Books.CompacIt.Page_20_Q8.src.FacadeClass;

import Books.CompacIt.Page_20_Q8.src.Shape;
import Books.CompacIt.Page_20_Q8.src.ConcreteClasses.*;

public class ShapeMaker {
    private Shape circle;
    private Shape rectangle;
    private Shape square;

    public ShapeMaker() {
        circle = new Circle();
        rectangle = new Rectangle();
        square = new Square();
    }

    public void drawCircle() {
        circle.draw();
    }

    public void drawRectangle() {
        rectangle.draw();
    }

    public void drawSquare() {
        square.draw();
    }
}
