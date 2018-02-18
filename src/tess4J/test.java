package tess4J;
 
import java.io.*;
import net.sourceforge.tess4j.*;
 
public class test {
public static void main(String[] args) {
File imageFile = new File("filepath\\eurotext.pdf");
Tesseract instance = new Tesseract(); //
instance.setDatapath("C:\\Users\\Computer\\Desktop\\Workspace\\Tess4J\\tessdata");
 
try {
 
String result = instance.doOCR(imageFile);
System.out.println(result);
 
} catch (TesseractException e) {
System.err.println(e.getMessage());
}
}
}