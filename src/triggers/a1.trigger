/**
 * Created by mparzych004 on 06.11.2019.
 */

trigger a1 on Account (before delete) {
    Account a = new Account(Name = 'New Account');
    // AccountId to domyslna relacja do Account.Id
    insert a;
    Opportunity opp = new Opportunity(Name = 'abc', AccountId = a.Id);

    Test.startTest();

    Database.DeleteResult r = Database.delete(a, false); // zawiera boolean isSuccess()

    Test.stopTest();

    System.assert(false);

}