/**
 * Created by mparzych004 on 25.10.2019.
 */

public with sharing class Schedul22 implements Schedulable{


    public void execute(SchedulableContext param1) {
        batch11 b = new batch11();
        Database.executeBatch(b);

    }
}