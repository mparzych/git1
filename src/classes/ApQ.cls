/**
 * Created by mparzych004 on 12.11.2019.
 */

public with sharing class ApQ implements inter1{
    public void m() {

        List<Account> l = new List<Account>();
        String s = 'select Id from Account';
//        l = [select Id from Account];




        System.debug(l);

    }

}