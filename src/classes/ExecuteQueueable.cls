
public with sharing class ExecuteQueueable implements Queueable{


    public void execute(QueueableContext param1) {
        List<Account> l = [select Id, Name from Account limit 5];
        for (Account a : l) {
            a.Name = a.Name + '  789123456';
//            Integer ind = a.Name.indexOf('789123456');
//            a.Name = a.Name.substring(0, ind);
        }
        update l;
    }

    @AuraEnabled
    public static void ex() {
        ExecuteQueueable e = new ExecuteQueueable();

        System.enqueueJob(e);
    }
}