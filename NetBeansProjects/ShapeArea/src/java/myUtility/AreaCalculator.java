/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package myUtility;
import java.io.Serializable;

/**
 *
 * @author cjgehinscott
 */
public class AreaCalculator extends Object implements Serializable {
    private double radius;
    private double size;
    private double height;
    private double width;
    private double base;
    private double side1;
    private double side2;
    private double majorAxis;
    private double minorAxis;
    private double area;
    
    public double getCircle(double radius){
        area = Math.PI * radius * radius;
        return area;
    }
    public double getSquare(double size){
        area = size * size;
        return area;
    }
    public double getRectangle(double length,double width){
        area = length * width;
        return area;
    }
    public double getTriangle(double base, double height){
        area = 0.5 * base * height;
        return area;
    }
    public double getParallelogram(double base, double height){
        area = base * height;
        return area;
    }
    public double getEllipse(double majorAxis, double minorAxis){
        area = Math.PI * majorAxis * minorAxis;
        return area;
    }
    public double getTrapezoid(double side1, double side2, double height){
        area = 0.5 * (side1 + side2) * height;
        return area;
    }
}
