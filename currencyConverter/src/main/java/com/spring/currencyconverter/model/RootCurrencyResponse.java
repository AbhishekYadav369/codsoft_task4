package com.spring.currencyconverter.model;

import org.springframework.stereotype.Component;

import java.util.Map;

// Root class wrapping the 'data' object
@Component
public class RootCurrencyResponse {
        private Map<String, Currency> data;

        public Map<String, Currency> getData() {
            return data;
        }

        public void setData(Map<String, Currency> data) {
            this.data = data;
        }
    }



