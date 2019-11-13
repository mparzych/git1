

global class batch2 implements Database.Batchable<SObject> {


    global void execute(Database.BatchableContext param1, List<SObject> param2) {

    }

    global void finish(Database.BatchableContext param1) {
    }

    global Iterable<SObject> start(Database.BatchableContext param1) {
        return null;
    }
}