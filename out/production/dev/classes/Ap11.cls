/**
 * Created by mparzych004 on 16.10.2019.
 */

public with sharing class Ap11 {

    public static void xsosl() {
//        List<List<SObject>> l = [find '00' returning Lead, Account, Case];


        String q = 'find \'00\' returning Lead, Account, Case';
        Search.SearchResults l1 = search.find(q);
        System.debug(l1);

        List<List<SObject>> l = search.query(q);
//        System.debug(l);
        for (List<SObject> l2: l) {
            System.debug(l2);
        }


    }

    public static void addRecord() {
//        List<Contact> conList = new List<Contact> {
//                new Contact(FirstName='Joe',LastName='Smith',Department='Finance'),
//                new Contact(FirstName='Kathy',LastName='Smith',Department='Technology'),
//                new Contact(FirstName='Caroline',LastName='Roth',Department='Finance'),
//                new Contact(FirstName='Kim',LastName='Shain',Department='Education')};

//        List<Contact> conList  = new List<Contact>{new Contact(FirstName = 'abv', LastName='abc')};
        List<Contact> conList  = new List<Contact>{new Contact(FirstName = 'abv')};


        insert conList;
    }

    public static void m1() {
        Map<String , Schema.SObjectType> m = Schema.getGlobalDescribe();
//        for (String s: m.keySet()) {
//            System.debug(s + ', ' + m.get(s));
//        }
//        List<DescribeDataCategoryGroupResult > l22 = Schema.describeDataCategoryGroups();

        for (Schema.SObjectType so: m.values()) {
            System.debug(so);
        }

        System.debug(m);
    }


    public void m() {
List<Contact> m1 = [select Name, Id from Contact];


    }

}
