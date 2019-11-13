/**
 * Created by mparzych004 on 11.10.2019.
 */

public with sharing class Ex2 {

    public static Boolean isDivisible(Integer i) {
        Integer iCopy = i;
        Integer lastDigit = 0;

        while (iCopy > 0) {
            lastDigit = Math.mod(iCopy, 10);
            if (lastDigit == 0 || Math.mod(i, lastDigit) != 0) {
                return false;
            }
            iCopy /= 10;
        }
        return true;
    }


    public Integer climbStair(Integer n) {
        if (n == 0 ) {
            return 1;
        }
        if (n < 1) {
            return 0;
        }
        return climbStair(n - 1) + climbStair(n - 2);
    }



    public static void divisibleNumbers(Integer n) {
        List<Integer> l = new List<Integer>();
        for (Integer i = 10; i <= n; i++) {
            if (isDivisible(i)) {
                l.add(i);
            }
        }
        System.debug(l);
    }


    public static List<SObject> dmlVoid() {
        List<SObject> l = new List<SObject>();
        l = [select Id, Name from Account limit 20];

        return l;
    }

    public  void m() {

        System.debug(dmlVoid());
    }

}