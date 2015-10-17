package com.ganesh.dom;

import java.io.File;
import java.io.FileOutputStream;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.apache.xml.serialize.*;
import org.w3c.dom.*;

public class DOMUtil {
	public static Document readXML(String fname){
		Document doc = null;
		try{
			DocumentBuilderFactory dbf= DocumentBuilderFactory.newInstance();
			DocumentBuilder db = dbf.newDocumentBuilder();
			doc=db.parse(fname);
		}catch(Exception e){
			e.printStackTrace();
		}
		return doc;
	}
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
	public static String getTagData(Element stu,String tname){
		NodeList eles = stu.getElementsByTagName(tname);
		Element ele =(Element)eles.item(0);
		Node node =ele.getFirstChild();
		String data = null;
		if(node instanceof CharacterData){
			CharacterData cd =(CharacterData)node;
			data = cd.getData();
		}
		return data;
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
