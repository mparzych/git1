/**
 * Created by mparzych004 on 25.10.2019.
 */

public with sharing class Ap1234 {

    public static void showPickLists() {
        List<Schema.PicklistEntry> picklistEntries = Account.Industry.getDescribe().getPicklistValues();
        System.debug(picklistEntries);

        for (Schema.PicklistEntry s: picklistEntries) {
            System.debug(s);
        }
        Id pricebookId = T
                est.getStandardPricebookId()
    }

    public void m() {
        showPickLists();

    }
}