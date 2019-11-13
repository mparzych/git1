
public with sharing class b1 implements Database.Batchable<SObject>{

    public void execute(Database.BatchableContext param1, List<Account> param2) {
        for (Account a: param2) {
            a.Name = a.Name + 'abc';
        }
        update param2;
    }

    public void finish(Database.BatchableContext param1) {
    }

    public Database.QueryLocator start(Database.BatchableContext param1) {
        String s = 'select Id, Name from Account';

        return Database.getQueryLocator(s);
    }


}