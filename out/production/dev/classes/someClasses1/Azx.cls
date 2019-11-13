/**
 * Created by mparzych004 on 04.10.2019.
 */

public with sharing class Azx {
    public void m() {
        dmlVoid();
    }

    public void m2() {

        List<List<SObject>> lo = [find '00' in all fields returning Lead(id), Account];

        List<SObject> l = [select Id from Account];

        for (SObject so : l) {
            System.debug(so);

        }
    }

    public static void dmlVoid() {
//        List<SObject> l = [select Id from Account limit 1];
//        List<Account> li = [select Id from Account limit 4];
        List<SObject> l = [select Id from Account limit 4];
        update l;


    }



}