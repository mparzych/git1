

global class batch1 implements Database.Batchable<SObject> {


    global void execute(Database.BatchableContext param1, List<Account> param2) {
        for (Account a : param2) {
            if (a.Name.endsWith(',,,,,,,,,,')) {
                Integer index = a.Name.indexOf(',');
                a.Name = a.Name.substring(0, index);
            }

        }

        try {
            update param2;
        } catch (Exception e) {
            System.debug(e);
        } finally {
            print();
        }
    }
    static void print() {
        System.debug('xxxxxxxxxxxxx');
    }

    global void finish(Database.BatchableContext param1) {
    }

    global Iterable<SObject> start(Database.BatchableContext param1) {
        String s = 'select Id, Name from Account limit 3';
        return Database.getQueryLocator(s);
    }
}