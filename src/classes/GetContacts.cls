/**
 * Created by mparzych004 on 25.10.2019.
 */

public with sharing class GetContacts {
    @AuraEnabled
    public static List<Contact> getContactsMethod() {

        String q = 'SELECT Name, Phone from Contact limit 10';

        List<Contact> l = Database.query(q);
        return l;
    }

}