package com.ganesh.spring3.oxm;


import java.io.*;

import javax.xml.transform.stream.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.oxm.*;

public class JLCMarshaller {
	@Autowired
	Marshaller marshaller;
	@Autowired
	Unmarshaller unmarshaller;
	public void save(Object obj,String fname){
		try{
			FileOutputStream fos= new FileOutputStream(fname);
			System.out.println(marshaller);
			marshaller.marshal(obj, new StreamResult(fos));
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public Object load(String fname){
		Object obj = null;
		try{
			FileInputStream fis= new FileInputStream(fname);
			obj= unmarshaller.unmarshal(new StreamSource(fis));
		}catch(Exception e){
			e.printStackTrace();
		}
		return obj;
	}
}
