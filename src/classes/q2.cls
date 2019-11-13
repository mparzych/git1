/**
 * Created by mparzych004 on 08.11.2019.
 */

public with sharing class q2 implements Queueable{


    public void execute(QueueableContext param1) {

        List<Account> l = [select Id, Name from Account limit 5];

        for (Account a : l) {
            a.Name += '1zxc';
        }

        update l;
    }
}