/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sucelja;

/**
 *
 * @author programer10
 */
public class PretvorbaCelzijus implements Pretvaranja {

        @Override
        public double celzijusiUKelvine(double stupnjevaCelzijusovih) {
            return stupnjevaCelzijusovih+Pretvaranja.CuK;
        }

        @Override
        public double celzijusiUFahreinheote(double stupnjevaCelzijusovih) {
            return stupnjevaCelzijusovih*Pretvaranja.CuFFaktor+32;
        }
        
    }
    
    

