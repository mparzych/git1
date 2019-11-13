/**
 * Created by mparzych004 on 23.10.2019.
 */

public with sharing class ExecuteSchedule {

    public void executeSchedule() {
        System.schedule('Scheduled Job 1', '0 0 * * * ?', new Schedul ());
        System.schedule('Scheduled Job 2', '0 15 * * * ?', new Schedul ());
        System.schedule('Scheduled Job 3', '0 30 * * * ?', new Schedul ());
        System.schedule('Scheduled Job 4', '0 45 * * * ?', new Schedul ());

    }
}