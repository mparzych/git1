/**
 * Created by mparzych004 on 28.10.2019.
 */

public with sharing class ExecuteBatch {

    public void exec() {
        batch22 b = new batch22();
        Database.executeBatch(b);
    }
}