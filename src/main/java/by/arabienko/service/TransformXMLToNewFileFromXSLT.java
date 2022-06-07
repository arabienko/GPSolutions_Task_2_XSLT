package by.arabienko.service;

import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

/**
 * XML file transformation class using XSLT
 */
public class TransformXMLToNewFileFromXSLT {
    public static void transform() {
        TransformerFactory transformerFactory =
                TransformerFactory.newInstance();
        Transformer transformer;
        try {
            transformer = transformerFactory.newTransformer(
                    new StreamSource("src/main/resources/transformGuests1.xsl"));
            transformer.transform(
                    new StreamSource("src/main/resources/input_Guests1.xml"),
                    new StreamResult("src/main/resources/GuestsOut1.xml"));
        } catch (TransformerException e) {
            e.printStackTrace();
        }
    }
}
