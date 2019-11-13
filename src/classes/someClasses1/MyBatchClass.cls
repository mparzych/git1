global class deleteAccounts implements Database.Batchable

{

    global final String Query;

    global deleteAccounts(String q)

    {

        Query = q;
    }


    global Database.QueryLocator start(Database.BatchableContext BC)

    {

        return Database.getQueryLocator(query);

    }


    global void execute(Database.BatchableContext BC, List scope)

    {

        List <Account> lstAccount = new list<Account>();

        for (Sobject s : scope)

        {

            Account a = (Account) s;

            lstAccount.add(a);

        }

        Delete lstAccount;

    }


    global void finish(Database.BatchableContext BC)

    {

        //Send an email to the User after your batch completes

        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();

        String[] toAddresses = new String[]{‘sforce2009@gmail.com’
                };

        mail.setToAddresses(toAddresses);

        mail.setSubject('Apex Batch Job is done‘);

        mail.setPlainTextBody('The batch Apex job processed ');

        Messaging.sendEmail(new Messaging.SingleEmailMessage[]{
                mail
        });

    }

}



