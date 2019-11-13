/**
 * Created by mparzych004 on 24.10.2019.
 */

public with sharing class schedul2 implements Schedulable{

    public void a() {
        List<Account> l = [select Name from Account limit 5];
        for (Account a: l) {
            a.Name += '3';
        }
        update l;
    }

    public void execute(SchedulableContext param1) {
        schedul2 s = new schedul2();
        s.a();
    }
}