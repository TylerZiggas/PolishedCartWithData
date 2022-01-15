// Author: Tyler Ziggas
// Date: March 2021
// The purpose of this java file is to read from the products.txt file and grab whatever product was just asked of

package data;

import java.io.*;
import java.util.*;

import business.*;

public class ProductIO { // Reading from the products txt file

    public static Product getProduct(String code, String filepath) {
        try {
            File file = new File(filepath); // Establish the filepath that was requested
            BufferedReader in = new BufferedReader(new FileReader(file));

            String line = in.readLine();
            while (line != null) { // Read line if it has text in it
                StringTokenizer t = new StringTokenizer(line, "|"); // Establish the breakpoint
                String productCode = t.nextToken(); // Product code is first
                if (code.equalsIgnoreCase(productCode)) {
                    String title = t.nextToken(); // Next is title
                    double price = Double.parseDouble(t.nextToken()); // Then price
                    String image = t.nextToken(); // Lastly is the image url
                    Product p = new Product(); // Creation of the product
                    p.setCode(code);
                    p.setTitle(title);
                    p.setPrice(price);
                    p.setImage(image);
                    in.close();
                    return p;
                }
                line = in.readLine();
            }
            in.close(); // Close the reader
            return null;
        } catch (IOException e) { // Try catch in case of error
            System.err.println(e);
            return null;
        }
    }

    public static ArrayList<Product> getProducts(String filepath) {
        ArrayList<Product> products = new ArrayList<Product>();
        File file = new File(filepath);
        try {
            BufferedReader in = new BufferedReader(
                                new FileReader(file));

            String line = in.readLine(); // Open reader
            while (line != null) {
                StringTokenizer t = new StringTokenizer(line, "|"); // Establish breakpoint
                String code = t.nextToken(); // Product code is first
                String title = t.nextToken(); // Next is title
                String priceAsString = t.nextToken(); 
                double price = Double.parseDouble(priceAsString); // Then price
                String image = t.nextToken(); // Lastly is the image url
                Product p = new Product(); // Creation of the product
                p.setCode(code);
                p.setTitle(title);
                p.setPrice(price);
                p.setImage(image);
                products.add(p);
                line = in.readLine();
            }
            in.close(); // Close the reader
            return products;
        } catch (IOException e) { // Try catch in case of error
            System.err.println(e);
            return null;
        }
    }
}