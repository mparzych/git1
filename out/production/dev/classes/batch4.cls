
global class batch4 implements Database.Batchable<SObject>{


    global void execute(Database.BatchableContext param1, List<Account> param2) {
        for (Account acc: param2) {
            acc.Name = acc.Name.substring(0, 4);
        }
        try {
            System.debug('abcd');
            update param2;
        }
        catch (Exception e) {
            System.debug(e);
        }

    }

    global void finish(Database.BatchableContext param1) {
    }

    global Iterable<SObject> start(Database.BatchableContext param1) {
        String q = 'select Id, Name from Account where Name like \'ac%\'';
        return Database.getQueryLocator(q);
    }

}