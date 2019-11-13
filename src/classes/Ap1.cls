

public with sharing class Ap1  {

    public static void getSOQL() {
        String s = 'select Id, Name from Account limit 10';
        List<Account> l = Database.query(s);

        for (Account a: l) {
            System.debug(a);
        }

        System.debug(l);
    }

    public static void getDynamic() {
        Map<String , SObjectType> m = Schema.getGlobalDescribe();
        System.debug(m);

        for (String s: m.keySet()) {
//            System.debug(s);
        }


        for (SObjectType so : m.values()) {
            System.debug(so);
        }

    }

    public static void schemaVoid(){
//        List<Schema.PicklistEntry> fieldResult = Account.Industry.getDescribe().getPicklistValues();
//        System.debug(fieldResult);
////
//        for (Schema.PicklistEntry s: fieldResult) {
//            System.debug(s);
//        }

//        Account ac = [select Industry from Account where AccountNumber='CD355120-B'];
//        System.debug(ac);




//        List<Schema.RecordTypeInfo> l = Account.SObjectType.getDescribe().getRecordTypeInfos();
//        System.debug(l);
//
//        for (Schema.RecordTypeInfo sobj : l) {
//            System.debug(sobj);
//        }

//        List<Schema.ChildRelationship> l3 = Account.SObjectType.getDescribe().getChildRelationships();




//        for (Schema.ChildRelationship s : l3) {
//            System.debug(s);
//        }

//        List<SObject> a2 = [select SLA__c FROM Account];

//        String  a2 = [select xcc__c FROM Account where AccountNumber='CD355120-B'].xcc__c;
//        System.debug(a2);



//        for (String s : a2 ) {
//            System.debug()
//        }
        List<SObject> l = [select Id from Account];
        for (Integer i = 0; i < 10; i++) {
            l = [select Id from Account];

        }

        for (Account a : [select Name from Account limit 4]) {
            a.Name = a.Name + ' x';
            update a;
        }
        Integer x = Limits.getDmlStatements();
        System.debug(x);

        Integer x2 = Limits.getAggregateQueries();
        Integer x3 = Limits.getCpuTime();


        System.debug(x3);



        Map<String , SObjectType> m = Schema.getGlobalDescribe();


        List<PicklistEntry> l33 = Account.Industry.getDescribe().getPicklistValues();

    }

    public static void getPickLists() {
        List<PicklistEntry> ll = Account.Industry.getDescribe().getPicklistValues();
        String  ll2 = Account.Industry.getDescribe().getCalculatedFormula();
        System.debug(ll2);

//        System.runAs(new ConnectApi.User()) {};

}

    public static void zxc() {
//        List<Account> l = new List<Account>([select Id from Account]);
//        System.debug(l);


    }



    public void m() {
//        getPickLists();

        zxc();
    }


}