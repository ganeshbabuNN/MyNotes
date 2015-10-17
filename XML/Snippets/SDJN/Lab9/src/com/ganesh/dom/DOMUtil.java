package com.ganesh.dom;

import java.io.File;
import java.io.FileOutputStream;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.apache.xml.serialize.OutputFormat;
import org.apache.xml.serialize.XMLSerializer;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Text;

public class DOMUtil {
	public static Document createDocument(){
		Document doc = null;
		try{
			DocumentBuilderFactory dbf= DocumentBuilderFactory.newInstance();
			DocumentBuilder db = dbf.newDocumentBuilder();
			doc=db.newDocument();
		}catch(Exception e){
			e.printStackTrace();
		}
		return doc;
	}
	public static Element createMyElement(Document doc,String tname,String value){
		Text txt = doc.createTextNode(value);
		Element ele =doc.createElement(tname);
		ele.appendChild(txt);
		return ele;
	}
	
	public static void printTOFile(Document doc,String fname){
		try{
			OutputFormat of= new OutputFormat(doc);
			of.setIndenting(true);
			FileOutputStream fos = new FileOutputStream(new File(fname));
			XMLSerializer xs= new XMLSerializer(fos, of);
			xs.serialize(doc);
		}catch(Exception e){
			e.printStackTrace();
		}
	}	
}
