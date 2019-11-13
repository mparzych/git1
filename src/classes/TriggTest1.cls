/**
 * Created by mparzych004 on 06.11.2019.
 */

@IsTest
private class TriggTest1 {

    @isTest static void abc() {
        Account a = new Account(Name = 'New Account');

        insert a;
        Opportunity opp = new Opportunity(Name = 'abc', AccountId = a.Id);

        Test.startTest();

        Database.DeleteResult result = Database.delete(a, false); //

        Test.stopTest();

        System.assert( ! result.isSuccess());
        System.assert(result.getErrors().size() > 0);

    }


}