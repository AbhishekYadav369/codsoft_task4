package com.spring.currencyconverter.model;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
@Scope("prototype")
public class CurrencyCombinedInfo {
        private String code;
        private String name;
        private String symbol;
        private double rate;

        // Getters and Setters
        public String getCode() { return code; }
        public void setCode(String code) { this.code = code; }

        public String getName() { return name; }
        public void setName(String name) { this.name = name; }

        public String getSymbol() { return symbol; }
        public void setSymbol(String symbol) { this.symbol = symbol; }

        public double getRate() { return rate; }
        public void setRate(double rate) { this.rate = rate; }

        @Override
        public String toString() {
                return "CurrencyCombinedInfo{" +
                        "code='" + code + '\'' +
                        ", name='" + name + '\'' +
                        ", symbol='" + symbol + '\'' +
                        ", rate=" + rate +
                        '}';
        }
}

