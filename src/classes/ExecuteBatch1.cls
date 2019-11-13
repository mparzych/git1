/**
 * Created by mparzych004 on 25.10.2019.
 */

public with sharing class ExecuteBatch1 {
    public void executeBatch1m() {
        System.schedule('job name', '0 15 15 * *', new Schedul22());
    }


}