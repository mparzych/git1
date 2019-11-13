
public with sharing class schedule45 implements Schedulable{


    public void execute(SchedulableContext param1) {
        batch123 b = new batch123();
        Database.executeBatch(b);


    }

}