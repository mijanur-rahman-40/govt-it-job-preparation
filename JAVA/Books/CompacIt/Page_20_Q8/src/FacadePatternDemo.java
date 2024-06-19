package Books.CompacIt.Page_20_Q8.src;

import Books.CompacIt.Page_20_Q8.src.FacadeClass.*;

// using the facade class to draw various types of shapes
public class FacadePatternDemo {
    public static void main(String[] args) throws Exception {
        ShapeMaker shapeMaker = new ShapeMaker();

        shapeMaker.drawCircle();
        shapeMaker.drawRectangle();
        shapeMaker.drawSquare();
    }
}
