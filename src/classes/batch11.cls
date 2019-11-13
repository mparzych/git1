/**
 * Created by mparzych004 on 25.10.2019.
 */

public with sharing class batch11 implements Database.Batchable<SObject> {


    public void execute(Database.BatchableContext param1, List<Account> param2) {
        for (Account a : param2) {
            a.Name = a.Name + 'a';
        }
        update param2;

    }

    public void finish(Database.BatchableContext param1) {
    }

    public Iterable<SObject> start(Database.BatchableContext param1) {
        String s = 'select Id, Name from Account limit 1';
        return Database.getQueryLocator(s);
    }
}