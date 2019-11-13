public with sharing class ContactListController {


    @AuraEnabled
    public static List<Contact> findAll() {
        return [SELECT id, name, phone FROM Contact LIMIT 50];
    }

    @AuraEnabled
    public static List<Opportunity> returnOpportunities() {
        List<Opportunity> l = [select Name,  IsClosed from Opportunity limit 20];
//        List<Opportunity> l2 = new List<Opportunity>();
//        List<Opportunity> l2 = new List<Opportunity>();
//        for (SObject o : l) {
//            l2.add(o);
//        }
        return l;
    }

    @AuraEnabled
    public static List<Contact> retContacts() {
        List<Contact> l = [select Name, AssistantName, Email , Phone from Contact];
        return l;
    }

    @AuraEnabled
    public static Integer retInteger() {
        return 22;
    }

    @AuraEnabled
    public static Integer climbInteger() {
        Ex2 e = new Ex2();
        return e.climbStair(10);
    }

    @AuraEnabled
    public static String[] retStrings() {
        String[] s1 = new String[3];
        s1[0] = 'st 1';
        s1[1] = 'st 2  fdf';
        s1[2] = 'st 3';

        return s1;
    }

    @AuraEnabled
//    public static List<Lead> returnLeads() {
//        List<Lead> l = [select Name, Company, OwnerId from Lead limit 15];
//        return l;
//    }
    public static List<Lead > returnLeads() {
//        List<Lead> l = new List<Lead>();
//        l.add(new Lead(Company='abc'));
        List<Lead> l2 = [select Name from Lead limit 10];
        for (Lead o : l2) {
//            l2.add(new Lead(Email='abc@mail.com'));
//            l2.add(o);
//            if (o.IsUnreadByOwner == false) {
//            }
            if (o.Name == 'Bertha Boxer') {
                return [select Name from Lead limit 15];

            }
        }
//         l.add('abcdefghg');
//         l.add('abcdefghg');
//         l.add('abcdefghg');
        return l2;
    }

    @AuraEnabled
    public static List<Account> showAccounts() {
        return [select Id, Name, Phone from Account limit 30];
    }

    @AuraEnabled
    public static List<Account> showAccounts2() {
        Integer countInteger = 4;

        return [select  Id, Name, Phone from Account limit :countInteger];
    }

    public static Integer c = 1;

    @AuraEnabled
    public static String returnC() {
        return c + '. ';
    }


    @AuraEnabled
    public static List<Contact> findByName(String searchKey) {
        String name = '%' + searchKey + '%';
        return [SELECT id, name, phone FROM Contact WHERE name LIKE :name LIMIT 50];
    }

    @AuraEnabled
    public static Contact findById(String contactId) {
        return [SELECT id, name, title, phone, mobilephone, Account.Name
        FROM Contact WHERE Id = :contactId];
    }

//    @AuraEnabled
//    public static Integer climbStair(Integer n) {
//        if (n == 0 ) {
//            return 1;
//        }
//        if (n < 1) {
//            return 0;
//        }
//        return climbStair(n - 1) + climbStair(n - 2);
//    }
//
//    @AuraEnabled
//    public static Integer climbS() {
//        return climbStair(10);
//    }

    @AuraEnabled
    public static List<Account> showAcc() {
        List<Account> l = [select Id, Name from Account limit 2];
        return l;
    }

    @AuraEnabled
    public static List<Account> showAcc3() {
        return [select Id, Name from Account limit 3];
    }



}
