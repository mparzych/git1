
public with sharing class VFController23 {

    public List<Contact> getContact() {
        PageReference p = new PageReference('');
        List<Contact> l = [select FirstName, LastName, AccountId from Contact ];
        return l;
    }

}