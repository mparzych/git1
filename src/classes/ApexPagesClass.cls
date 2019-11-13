/**
 * Created by mparzych004 on 25.10.2019.
 */

public with sharing class ApexPagesClass {

    public void m() {

        Account myAccount = new Account(Name = 'MyAccount');
        Insert myAccount;
        For (Integer x = 0; x < 150; x++) {
            Account newAccount = new Account (Name = 'MyAccount' + x)
            ;try {
                Insert newAccount;
            } catch (Exception ex) {
                System.debug (ex) ;
            }
        }insert new Account (Name = 'myAccount');

    }

}
