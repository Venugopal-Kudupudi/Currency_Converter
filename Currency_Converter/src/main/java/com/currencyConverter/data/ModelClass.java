package com.currencyConverter.data;

/*
inr,usd,eur,ils,aud,rub,jpy,pkr,npr,lkr,bdt,btn,cny,twd,gbp,irr",sar,kwd,qar,bhd,aed,cad,afn,krw,kpw,vnd,php,thb,sgd,chf,myr,khr,mvr
https://api.apilayer.com/fixer/latest?symbols=inr%2Cusd%2Ceur%2Cils%2Caud%2Crub%2Cjpy%2Cpkr%2Cnpr%2Clkr%2Cbdt%2Cbtn%2Ccny%2Ctwd%2Cgbp%2Cirr%22%2Csar%2Ckwd%2Cqar%2Cbhd%2Caed%2Ccad%2Cafn%2Ckrw%2Ckpw%2Cvnd%2Cphp%2Cthb%2Csgd%2Cchf%2Cmyr%2Ckhr%2Cmvr&base=usd
*/

public class ModelClass
{
	private String country1;
	private String country2;
	private String c1Code;
	private String c2Code;
	private double value1;
	private double value2;

	public String getCountry1() {
		return country1;
	}
	public String getC1Code() {
		return c1Code;
	}
	public void setC1Code(String c1Code) {
		this.c1Code = c1Code;
	}
	public String getC2Code() {
		return c2Code;
	}
	public void setC2Code(String c2Code) {
		this.c2Code = c2Code;
	}
	public void setCountry1(String country1) {
		this.country1 = country1;
	}
	public String getCountry2() {
		return country2;
	}
	public void setCountry2(String country2) {
		this.country2 = country2;
	}
	public double getValue1() {
		return value1;
	}
	public void setValue1(double value1) {
		this.value1 = value1;
	}
	public double getValue2() {
		return value2;
	}
	public void setValue2(double value2) {
		this.value2 = value2;
	}
}
