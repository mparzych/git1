
public with sharing class Main {


    static void displayDML() {
        List<Account> l = [select Name from Account];
        System.debug('list = ' + l);

        for (Account a : l) {

            System.debug(a);
            System.debug('a name  ' + a.Name);
        }

    }

    public static void methodInTrigger() {
        System.debug('bbb');
    }

    static void displaySOSL(String s) {
        List<List<SObject>> l = [find :s returning Case, Lead];
//        System.debug(l);

        for (List<SObject> l2 : l) {
            System.debug(l2 + '\n');
            for (SObject so : l2) {
                System.debug(so.Id);
            }
        }
    }

    static void displayCase() {
        List<List<SObject>> l = [find '00' returning Case];
        System.debug(l);

        for (List<SObject> l2 : l) {
            for (SObject so : l2) {
                System.debug(so);
            }
        }
    }


    public static void sendMail() {
        Messaging.SingleEmailMessage message = new Messaging.SingleEmailMessage();
        message.toAddresses = new String[]{
                'maciej_parzych@wp.pl'
        };
        message.optOutPolicy = 'FILTER';
        message.subject = 'Subject Test Message';
        message.plainTextBody = 'This is the message body.';
        Messaging.SingleEmailMessage[] messages = new List<Messaging.SingleEmailMessage>{
                message
        };
        Messaging.SendEmailResult[] results = Messaging.sendEmail(messages);

        if (results[0].success) {
            System.debug('The email was sent successfully.');
        } else {
            System.debug('The email failed to send: ' + results[0].errors[0].message);
        }
    }


    public Integer powOf(Integer x, Integer y) {
        Integer sum = 1;
        for (Integer i = 0; i < y; i++) {
            sum *= x;
        }
        return sum;
    }


    public Integer powOfRec(Integer x, Integer y) {
        return powOfRec(x, y, 0, 1);
    }

    public Integer powOfRec(Integer x, Integer y, Integer i, Integer sum) {
        if (i >= y) {
            return sum;
        }
        sum = sum * x;
        return powOfRec(x, y, i + 1, sum);
    }

    static public Integer[] rotateArr(Integer[] a, Integer k) {
        Integer len = a.size();
        if (k > len) {
            k = Math.mod(k, len);
        }
        Integer rot = len - k;

        Integer[] b = new Integer[len];
        Integer c = 0;
        for (Integer i = rot; i < len; i++) {
            b[c++] = a[i];
        }
        for (Integer i = 0; i < rot; i++) {
            b[c++] = a[i];
        }


        return b;

    }

    static void oldArr(Integer[] a, Integer[] b) {
        for (Integer i = 0; i < a.size(); i++) {
            b[i] = a[i];
        }
    }

    static public void disDML() {
//        String[] strings = [select Name from Account];


    }

    public static void insertDML(String s, Integer i) {
        Account account = new Account(Name = s, NumberOfEmployees = i);
        insert account;
    }

    public static void updateDML(String s) {

        try {

            List<SObject> ll = [select Id from Account];
            System.debug(ll);
//
            Account aaa = [select Name from Account limit 1 ];
            aaa.Name = 'ab';
            aaa.Id = '0012o00002O41L5AAJ';
            upsert aaa;

        }
        finally {

        }
//        catch (DmlException e) {
//            System.debug('err');
//        }



    }

    public static void mergeDML() {
        List<Account> ls = new List<Account>{new Account(name='Acme Inc.'),new Account(name='Acme')};
        insert ls;

        //
        List<Account> accounts = [select Name from Account  WHERE Name = 'dddd' OR Name = 'ABCD'];
        List<Account> accounts2 = [select Name from Account  WHERE Name = 'Acme' OR Name = 'Acme Inc.'];
//
        Boolean b = (3 < 4);
        Database.delete (accounts, b);
        delete accounts2;

//        Account aa = [SELECT Id, Name FROM Account WHERE Name = 'Acme Inc.' LIMIT 1];
//        Account bb = [SELECT Id, Name FROM Account WHERE Name = 'Acme' LIMIT 1];



        List<Account> accounts3 = new List<Account>();
        accounts3 = [select Name from Account where Name = 'dddd'];
        delete accounts3;

        try {
//            merge aa bb;
            System.debug('merged');
        } catch (DmlException e) {
            // Process exception here
            System.debug('err');
        }
    }

    public static void cvb() {

        List<SObject> cc = [select Name,  Id from Account ];
        System.debug(cc);
    }

    public void m() {


        cvb();


    }


}