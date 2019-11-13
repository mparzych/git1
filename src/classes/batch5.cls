/**
 * Created by mparzych004 on 23.10.2019.
 */

public with sharing class batch5 implements Database.Batchable<SObject>{


    public void execute(Database.BatchableContext param1, List<Account> param2) {
        for (Account a : param2) {
            Integer x = a.Name.indexOf('vbn');
            a.Name = a.Name.substring(0, x);
        }

        try {
            update param2;
        }
        catch (Exception e) {
            System.debug(e);
        }




    }

    public void finish(Database.BatchableContext param1) {
    }

    public Iterable<SObject> start(Database.BatchableContext param1) {
        String s = 'select Id, Name from Account limit 10';
        return Database.getQueryLocator(s);
    }
}