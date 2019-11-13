/**
 * Created by mparzych004 on 08.10.2019.
 */

public with sharing class Avc {

    public STATIC VOiD mm() {
//        List<Account> l = [select Id from Contact where Id in  (select Id from Account)];
//        System.debug(l);

    }
    public void m() {
//        List<List<SObject>> l = [find '00'  returning Lead, Account];
//        System.debug(l);
//
//        List<SObject> l2 = [select Id from Account];
//        System.debug(l2)

//        List<SObject> acc = [select Id, Name from Acc1__c];
//        List<SObject> acc2 = [select Id, Name from Acc1__c];
        SObject acc3 = [select Id from Account limit 1];

        System.debug('abc');
//        thrExc();

//        thrSelEcv();
//        statSOQL();
//        mm();

//        mmm();
    }
    public static void n() {
        Task
    }


    public static void statSOQL() {
        String soql = 'SELECT id, name FROM Account';
        List<Account> l = Database.query(soql);

        System.debug(l);
    }

    public static void thrSelEcv() {
        List<SObject> a = [select Name from Account ];
//        List<SObject> a2 = [select Id from Acc1__c ];
        System.debug(a.size());


//        System.debug(a2.size());
        System.debug(a);
    }

    public static void mmm() {
        List<SObject> l = new List<SObject>();
        for (Contact a: [select Id from Contact limit 3]) {
            l.add(a);
        }
        insert l;
    }

    public static void thrExc() {

        List<Account> l = new List<Account>();
        for (Account a : [select  Name from Account limit 10]) {
            a.Name = 'abc';
            l.add(a);

//            insert a;

        }
        insert l;
    }

}
