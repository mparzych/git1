
public with sharing class Q1 implements Queueable{


//    private String name;
//    public String getName() {
//
//    }

    public void execute(QueueableContext param1) {
        List<Account> l = [select Id, Name from Account limit 10];

        for (Account a : l) {
            a.Name = a.Name + 'xxx234';
        }
        update l;


    }
}