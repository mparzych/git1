/**
 * Created by mparzych004 on 29.10.2019.
 */

public with sharing class QueueEx implements Queueable{
    public void execute(QueueableContext param1) {
        List<Account> l =  [select Id, Name from Account limit 5];
        for (Account a: l) {

            a.Name += '1234';
        }
        update l;
    }
}