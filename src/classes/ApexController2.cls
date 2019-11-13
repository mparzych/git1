/**
 * Created by mparzych004 on 28.10.2019.
 */

public with sharing class ApexController2 {

    public List<Account> getAccounts() {
        return [select Name from Account];
    }
}