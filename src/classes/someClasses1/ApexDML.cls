/**
 * Created by mparzych004 on 27.09.2019.
 */

public with sharing class ApexDML {

    public void aa() {
        List<Account> l = [select Id from Account];
        List<List<SObject>> l3 = [find '00' in all fields returning lead ];

        List<SObject> l2 = [select Id from Account];

        System.debug(l);

//        Account account = [select Id from Account];
//        System.debug(account);

//        String str = [select Site from Account].Site;


        for (Account a : l) {
            System.debug(a);
        }


        System.debug('--------');

        for (List<SObject> l5 : l3) {
           System.debug(l5);

            for (SObject o : l5) {
                System.debug(o);
            }
        }

        SObject sobj = new Account();
        System.debug('sobject = ' + sobj);

    }

    public void a2() {
        List<SObject> l = new List<SObject>();
        for (SObject so : [select Name from Account]) {
            l.add(so);
        }

        Integer m = Limits.getDMLStatements();
        System.debug(m);
    }

}

