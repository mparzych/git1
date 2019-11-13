/**
 * Created by mparzych004 on 24.10.2019.
 */

public with sharing class Ap22 {

    public static void x() {
        ApexPages.StandardSetController controller =
                new ApexPages.StandardSetController( Database.getQueryLocator( 'SELECT Id FROM Account LIMIT 1'));
        System.debug(controller.getListViewOptions());
//        ApexPages.StanContro
    }

    public static void xxx() {
        Account a = [select Id, Name from Account where Name='fdsfsfsnjfm'];

    }





    @TestVisible
    private Integer inzxc = 22;



    public void m(){
        ab(0);
    }

    static void ab(Integer i) {
        System.debug(i);
        if (i == 400) {
            return;
        }
        ab(i + 1);

    }
}