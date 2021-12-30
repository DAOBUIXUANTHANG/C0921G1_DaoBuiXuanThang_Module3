import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class QuadraticEquation {
    public static void main(String[] args) {

    }
    // a*X^2 + b*X + c = 0
    public static boolean checkDelta(double delta){
        if (delta < 0){
            return false;
        }
        return true;
    }

    public static List<Double> solveEquation(int a , int b , int c){
        List<Double> equations = new ArrayList<>();
        double delta = b * b - 4 *a * c;
        boolean check = checkDelta(delta);
        if (check){
            double equation1 = ( - b + Math.sqrt(delta) ) / (2 * a);
            double equation2 = ( - b - Math.sqrt(delta) ) / (2 * a);
            equations.add(equation1);
            equations.add(equation2);
        }
        return equations;
    }
}
