package com.spring.currencyconverter.service;
import com.spring.currencyconverter.model.CurrencyCombinedInfo;
import com.spring.currencyconverter.model.CurrencyValue;
import com.spring.currencyconverter.model.RootCurrencyResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import com.spring.currencyconverter.model.Currency;

import java.util.*;

@Service
public class CurrencyService {
    private static final String API="fca_live_csqqIYOAgbKSBUwJckigwo1qyKqY4dJMVuhgkR3V";
    @Autowired
    private static RestTemplate restTemplate;
      //logic for fetching real time currency rate and converting it too
    public double getCurrencyConverted(String baseCurrencyCode,String targetCurrencyCode, double amount) {
        final String URL = "https://api.freecurrencyapi.com/v1/latest?apikey=API&currencies=BASE,TARGET";
       final String uri=URL.replace("API", API).replace("BASE",baseCurrencyCode).replace("TARGET",targetCurrencyCode);
        CurrencyValue currencyValue = restTemplate.getForObject(uri, CurrencyValue.class);
        if (currencyValue != null && currencyValue.getData() != null) {
            double rate= currencyValue.getData().get(targetCurrencyCode) / (double) currencyValue.getData().get(baseCurrencyCode);
            if (rate != 0.0) {
                System.out.println("currency amount: "+ amount*rate);
                return amount * rate;
            }
        } return 0.0;
    }
    private CurrencyValue getRate(Set<String> currencyCode) {
        final String URL = "https://api.freecurrencyapi.com/v1/latest?apikey=API&currencies=BASE";
        final String uri = URL.replace("API", API).replace("BASE",String.join(",",currencyCode));
        CurrencyValue currencyValue = restTemplate.getForObject(uri, CurrencyValue.class);
        if (currencyValue != null && currencyValue.getData() != null) {
            return currencyValue;
        }
        return null;
    }

    public List<CurrencyCombinedInfo> getAllCurrencies() {
        final String url = "https://api.freecurrencyapi.com/v1/currencies?apikey=API";
        final String uri = url.replace("API", API);
        List<CurrencyCombinedInfo> finalCurrencies=new ArrayList<>();
        RootCurrencyResponse response=restTemplate.getForObject(uri, RootCurrencyResponse.class);
        if(response.getData()!=null) {
            Set<String> codes = response.getData().keySet();
            CurrencyValue currencyValues = getRate(codes);
            for (Map.Entry<String,Currency> entry : response.getData().entrySet()) {
                String code = entry.getKey();
                Currency detail = entry.getValue();
                if (currencyValues.getData() != null) {
                    for (Map.Entry<String, Double> value : currencyValues.getData().entrySet()) {
                        if (code.equals(value.getKey())) {
                            CurrencyCombinedInfo currencyCombinedInfo = new CurrencyCombinedInfo();
                            currencyCombinedInfo.setCode(code);
                            currencyCombinedInfo.setRate(value.getValue());
                            currencyCombinedInfo.setName(detail.getName());
                            currencyCombinedInfo.setSymbol(detail.getSymbol());
                            finalCurrencies.add(currencyCombinedInfo);
                        }
                    }
                }
            }
            return  finalCurrencies;
        }
        return null;
    }
}
