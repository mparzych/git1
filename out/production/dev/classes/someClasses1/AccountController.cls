/**
 * Created by mparzych004 on 04.10.2019.
 */

public without sharing class AccountController {
    @AuraEnabled
    public static List<Account> getExpenses() {
        return [select Id, Name from Account limit 40];
    }

}