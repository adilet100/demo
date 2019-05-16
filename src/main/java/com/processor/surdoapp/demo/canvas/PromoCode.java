package com.processor.surdoapp.demo.canvas;

import java.util.Random;

public class PromoCode {
    public  void promoCodeGeneration() {

        Random random = new Random();
        int promoCode= 1000000;

            if (promoCode>100000) {
                promoCode = random.nextInt(100000);

                System.out.println("random = " +promoCode);
                }
    }
}