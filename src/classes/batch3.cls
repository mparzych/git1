
global class batch3 implements Database.Batchable<Sobject>{


    global void execute(Database.BatchableContext param1, List<Account> param2) {
        for (Account acc: param2) {
            acc.Name = acc.Name + 'xxxx 1';
        }
        try {
            update param2; //
        }
        catch (Exception e) {
            System.debug(e);
        }

    }

    global void finish(Database.BatchableContext param1) {
    }

    global Iterable<Sobject> start(Database.BatchableContext param1) {
        String q = 'select Id, Name from Account';
        return Database.getQueryLocator(q);
    }
}