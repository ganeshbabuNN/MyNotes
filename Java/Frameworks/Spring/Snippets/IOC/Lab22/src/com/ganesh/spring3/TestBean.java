package com.ganesh.spring3;

import javax.annotation.Resource;

public class TestBean {
	
	@Resource(name="oracleDS")
	DataSource oracleDataSource;
	
	@Resource(name="mysqlDS")
	DataSource mySqlDataSource;
	
	public void show(){
		System.out.println(oracleDataSource);
		System.out.println(mySqlDataSource);
	}

}
