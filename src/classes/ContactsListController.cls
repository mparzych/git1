


public with sharing class ContactsListController {
    private String sortOrder = 'LastName';

    public List<Contact> getContacts() {

        List<Contact> results = Database.query(
                'SELECT Id, FirstName, LastName, Title, Email ' +
                        'FROM Contact ' +
                        'ORDER BY ' + sortOrder + ' ASC ' +
                        'LIMIT 10'
        );
        return results;
    }

    public List<Account> getAccounts() {
        List<Account> l = [select  Name from Account];
        return l;
    }

    public List<Asset> getX1() {
        List<Asset> l = [select Name from Asset];
        return l;
    }

}