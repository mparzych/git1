
public with sharing class HelperClass {

    static {
        System.debug('abcd');
        }

    public void m(){

        System.debug('m');
        List<Account> l = Trigger.new;

    }

}