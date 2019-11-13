/**
 * Created by mparzych004 on 24.10.2019.
 */

public with sharing class InvokeFromPB {
    @InvocableMethod
    public static void aa() {
        List<SObject> l = [select Id, Name from Account];
    }

}