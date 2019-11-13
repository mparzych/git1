/**
 * Created by mparzych004 on 14.10.2019.
 */

public with sharing class V {

    public static boolean isPowerOf4(Integer n, Integer m){
        Integer score = 1;

        for (Integer i = 1; i <= n; i++) {
           score *= m;
            if (score > n) return false;
            if (score == n) {
                return true;
            }
        }
        return true;
    }



    public void m(){
        Boolean b =
        isPowerOf4(1, 256);

        System.debug(b);
    }
}