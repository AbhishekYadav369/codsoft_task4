package com.spring.currencyconverter.model;
import org.springframework.stereotype.Component;

import java.util.Map;
@Component
public class CurrencyValue {
    private Map<String, Double> data;
    public Map<String, Double> getData() {
        return data;
    }
    public void setData(Map<String, Double> data) {
        this.data = data;
    }
}
