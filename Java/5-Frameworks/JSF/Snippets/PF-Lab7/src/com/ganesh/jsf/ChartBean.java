package com.ganesh.jsf;

import java.io.Serializable;

import javax.faces.bean.ManagedBean;

import org.primefaces.model.chart.CartesianChartModel;
import org.primefaces.model.chart.ChartSeries;

@ManagedBean(name="chartBean")
public class ChartBean implements Serializable{
	private static final long serialVersionUID = -2485963341441059749L;
	private CartesianChartModel categoryModel;
	public ChartBean() {
	createCategoryMode();
	}
	public CartesianChartModel getCategoryModel() {
		return categoryModel;
	}
	private void createCategoryMode() {
		categoryModel = new CartesianChartModel();
		
		ChartSeries boys= new ChartSeries();
		boys.setLabel("Boy");
		boys.set("2004", 120);
		boys.set("2005", 100);
		boys.set("2006", 44);
		boys.set("2007", 150);
		boys.set("2008", 25);
		
		ChartSeries girls= new ChartSeries();
		girls.setLabel("Girls");
		girls.setLabel("Boy");
		girls.set("2004", 52);
		girls.set("2005", 60);
		girls.set("2006", 110);
		girls.set("2007", 135);
		girls.set("2008", 120);
		
		categoryModel.addSeries(boys);
		categoryModel.addSeries(girls);
	}
	
	
	
	
}
