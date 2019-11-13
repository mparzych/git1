/**
 * Created by mparzych004 on 04.10.2019.
 */

public with sharing class Sched implements Schedulable {


    public void execute(SchedulableContext param1) {
        List<Opportunity> opportunities = [select Id, Name, OwnerId from Opportunity where IsClosed = false ];



    }
}