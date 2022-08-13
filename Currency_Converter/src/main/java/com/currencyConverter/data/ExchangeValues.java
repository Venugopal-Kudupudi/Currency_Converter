package com.currencyConverter.data;

import org.json.JSONObject;

public class ExchangeValues
{
	public JSONObject  jso = GetLiveValues.json;
	public JSONObject ratesObj = jso.getJSONObject("rates");
	
	public ModelClass getValues(ModelClass mc)
	{
		double c1Val = ratesObj.getDouble(mc.getCountry1());
		double c2Val = ratesObj.getDouble(mc.getCountry2());
		double c1Count = mc.getValue1();
		
		double result = (c1Count/c1Val)*c2Val;
		mc.setValue2(result);
		return mc;
	}
}