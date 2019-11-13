/**
 * Created by mparzych004 on 04.11.2019.
 */

public with sharing class batch123 implements Database.Batchable<SObject>{


    private Integer xxx = 10000;

    public void execute(Database.BatchableContext param1, List<Account> param2) {

        for (Account a: param2)
            a.Name += 'x1';

        update param2;
    }

    public void finish(Database.BatchableContext param1) {
        System.debug('the end');
    }

    public Iterable<SObject> start(Database.BatchableContext param1) {
        return Database.getQueryLocator('select Id, Name from Account limit 39');
    }
}