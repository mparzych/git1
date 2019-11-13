/**
 * Created by mparzych004 on 05.11.2019.
 */

public with sharing class MyExtension {
    public Opportunity currentRecord{get; set;}

    public MyExtension() {

    }

    public MyExtension(ApexPages.StandardController standardController) {
        currentRecord = [select Id, Name, Amount from Opportunity where Id = :ApexPages.currentPage().getParameters().get('id')];
    }

    public void m() {
        System.debug(currentRecord);
    }

}