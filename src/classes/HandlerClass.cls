
public with sharing class HandlerClass {
    public void handle() {
        List<Account> l = Trigger.new;
        for (Account a: l) {
            a.Name = a.Name + 'trigger 123';
        }
    }

}