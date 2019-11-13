

virtual public with  sharing class ApCl1 {

    virtual public void ddd() { // sosl

        List<List<SObject>> l = [find '00' returning Lead(id), Account, Case];
        System.debug(l);

        for (List<SObject> l2 : l) {
            for (SObject sobj : l2) {
                System.debug(sobj);
            }
            System.debug('\n');
        }
        System.debug('a');

    }
    static void dmlVoid() {
        List<SObject> l = [select Id from Account];

        System.debug(l);

        for (SObject so : l) {
            System.debug(so);
        }

    }

    static void ins() {
        Account a = new Account(Name='abc2');
        insert a;
    }

    static void del() {
        List<SObject> l = [select Name from Account where Name = 'abc2'];
//        delete l;
        delete  [select Name from Account where Name = 'xcv'];
//        [select Name from Account where Name like 'x%'];

    }

    public static void ins2() {
        List<Account> l = new List<Account>();
//        l.add('abc');
//        l.add('abc2');

    }

    private static void x(){
        System.debug('x');
    }

    public static void bb() {
        Blob b = Blob.valueOf('abcd');
        System.debug(b.toString());
    }

    public static void cc() {
//        Object obj = System.UserInfo();

//        Map<String, Schema.SObjectType> m = Schema.getGlobalDescribe();

//        List<String> ll = new List<String>{'abc', 'cde', 'fghg'};
//        List<Schema.DescribeSObjectResult> l = Schema.describeSObjects(ll);

//        System.debug(l);
    }


    public static void mm() {
        Integer[] a = new Integer[100];

        for (Integer i = 0; i < a.size(); i++) {
            a[i] = 0;
        }

        for (Integer i : a) {
            System.debug(i);
        }
    }

    public void m() {

        mm();

    }
}