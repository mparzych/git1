

public with sharing class Ap5 {

    // duplicates
     public void ax() {
        Integer[] ar = new Integer[] {1,2,3,4,2,1,2,3,4};

         ar.sort();
         Integer c = 0;

         if (ar[0] != ar[1]) {
             ar[c++] = ar[0];
         }

         for (Integer i = 1; i < ar.size(); i++) {

             if (ar[i - 1] != ar[i]) {
                 ar[c++] = ar[i];
             }
         }
         System.debug(ar);

    }







    static void sosl() {
        List<List<SObject>> l = [find '00' returning Lead, Account, Case];
        System.debug(l);
    }

    public void m() {
        sosl();



    }

}