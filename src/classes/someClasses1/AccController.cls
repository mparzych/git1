/**
 * Created by mparzych004 on 07.10.2019.
 */

public with sharing class AccController {
    @AuraEnabled
    public static List<Account> getAcc(){
        List<Account> accounts = [select Id, Name from Account limit 40];
        return accounts;
    }

}