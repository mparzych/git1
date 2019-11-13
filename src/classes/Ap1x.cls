

public with sharing class Ap1x implements Queueable{
    public void execute(QueueableContext param1) {
        List<Account> l = [select Id, Name from Account limit 5];

        for (Account a : l) {
            a.Name  += a.Name + '456';
        }
        update l;
    }
}