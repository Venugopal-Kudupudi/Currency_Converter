package com.currencyConverter.data;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.json.JSONObject;

public class GetLiveValues
{
	public static GetLiveValues gtlv;
	public static JSONObject json;
	
	private GetLiveValues()
	{
		gtlv = new GetLiveValues();
	}
	
	public static GetLiveValues getObject()
	{
		return gtlv;
	}
	
	static
	{
		String data = "";
		
		try {
			String url = "https://api.apilayer.com/fixer/latest?symbols=inr%2Cusd%2Ceur%2Cils%2Caud%2Crub%2Cjpy%2Cpkr%2Cnpr%2Clkr%2Cbdt%2Cbtn%2Ccny%2Ctwd%2Cgbp%2Cirr%22%2Csar%2Ckwd%2Cqar%2Cbhd%2Caed%2Ccad%2Cafn%2Ckrw%2Ckpw%2Cvnd%2Cphp%2Cthb%2Csgd%2Cchf%2Cmyr%2Ckhr%2Cmvr&base=usd&apikey=kc3PNm4USzbyWMBuGXT4tdsL81wVL8Wb";
			URL obj = new URL(url);
			
			HttpURLConnection con = (HttpURLConnection) obj.openConnection();
			con.addRequestProperty("User-Agent", "Mozilla/4.76");
			
			int responseCode = con.getResponseCode();
			
			System.out.println("URL Fired from the Program");
			System.out.println("Response Code : "+responseCode);
			
			BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));
			
			String line = "";
			
			while((line = br.readLine()) != null)
			{
				data = data + line;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		System.out.println(data);
		
		JSONObject response = new JSONObject(data);
		json = response;
	}
}