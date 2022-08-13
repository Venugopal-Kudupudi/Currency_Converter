package com.currencyConverter.main;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class CurrencyConverterMain
{
	public static void main(String[] args)
	{
		SpringApplication.run(CurrencyConverterMain.class, args);
		System.out.println("Application Deployed Successfully.");
	}
}