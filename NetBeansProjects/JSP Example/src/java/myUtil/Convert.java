/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package myUtil;
import java.io.Serializable;//converts object into binary for server to talk to 

/**
 *
 * @author cjgehinscott
 */
public class Convert extends Object implements Serializable {
    private double celcius;
    private double fahrenheit;
    
    public double getCelcius(double fahrenheit){
        celcius = (fahrenheit - 32)*5/9;
        return celcius;
    }
    public double getFahrenheit(double celcius){
        fahrenheit = (celcius + 32)*9/5;
        return fahrenheit;
    }
}
