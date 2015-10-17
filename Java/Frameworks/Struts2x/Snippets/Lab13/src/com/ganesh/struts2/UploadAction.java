package com.ganesh.struts2;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

import com.opensymphony.xwork2.ActionSupport;

public class UploadAction extends ActionSupport{
	private String name;
	private File photo;
	private String photoContentType;
	private String photoFileName;
	
	@Override
	public String execute() throws Exception {
		System.out.println("file Uploading..............");
		String path = "C:/";
		FileInputStream in = null;
		FileOutputStream out = null;
		try{
			in = new FileInputStream(photo);
			String destFileName = path+ photoFileName;
			File destFile = new File(destFileName);
			if(! destFile.exists()){
				out= new FileOutputStream(destFile);
				int c;
				while((c=in.read())!= -1){
					out.write(c);
					}
				}
			in.close();
			out.close();
			return "success";
		}catch(Exception e) {
			addActionError(e.getMessage());
			return "input";			
		}
	}
	//setter and getters

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public File getPhoto() {
		return photo;
	}

	public void setPhoto(File photo) {
		this.photo = photo;
	}

	public String getPhotoContentType() {
		return photoContentType;
	}

	public void setPhotoContentType(String photoContentType) {
		this.photoContentType = photoContentType;
	}

	public String getPhotoFileName() {
		return photoFileName;
	}

	public void setPhotoFileName(String photoFileName) {
		this.photoFileName = photoFileName;
	}
	
	}
