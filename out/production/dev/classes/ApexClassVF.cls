/**
 * Created by mparzych004 on 17.10.2019.
 */

public with sharing class ApexClassVF {
    public Account acc;
    public ApexClassVF() {
        acc = [select Id, Name from Account limit 1];
    }

}