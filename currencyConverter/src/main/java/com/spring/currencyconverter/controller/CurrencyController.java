package com.spring.currencyconverter.controller;
import com.spring.currencyconverter.model.CurrencyCombinedInfo;
import com.spring.currencyconverter.service.CurrencyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class CurrencyController {
    private final CurrencyService currencyService;
    @Autowired
    public CurrencyController(CurrencyService currencyService) {
        this.currencyService = currencyService;
    }
    @GetMapping("currency")
    public String index(){
        return"index";
    }

    // This endpoint will call a service to fetch currency rates
    @GetMapping("fetchAll")
    public ModelAndView getAllCurrencies(ModelAndView modelAndView) {
        List<CurrencyCombinedInfo> infoList=new ArrayList<>( currencyService.getAllCurrencies());
        if(!infoList.isEmpty()){
            modelAndView.addObject("currencies",infoList);
            modelAndView.setViewName("currencyList");
        }
        return modelAndView;
    }

    //This endpoint will be called for converting value
    @PostMapping("convert")
    public ModelAndView getCurrencyByCode
    (@RequestParam String baseCode, @RequestParam String targetCode, @RequestParam double amount, ModelAndView modelAndView, Model model) {
        double currencyValue =currencyService.getCurrencyConverted(baseCode.toUpperCase(),targetCode.toUpperCase(),amount);
        if (currencyValue !=0.0) {
            modelAndView.addObject("convertedValue",currencyValue);
            modelAndView.setViewName("result");
        }
        return modelAndView;
    }
}
