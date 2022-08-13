package com.currencyConverter.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.currencyConverter.data.ExchangeValues;
import com.currencyConverter.data.ModelClass;

@Controller
public class CurrencyPageController
{
	@RequestMapping(path = "/", method = RequestMethod.GET)
	public ModelAndView print()
	{
		return new ModelAndView("home", "input", new ModelClass());
	}
	
	@RequestMapping(path = "/print", method = RequestMethod.POST)
	public ModelAndView get(ModelClass mcs)
	{
		ExchangeValues eval = new ExchangeValues();
		ModelClass mc = eval.getValues(mcs);
		return new ModelAndView("home", "input", mc);
	}
}