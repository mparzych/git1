
global class Schedul implements Schedulable{

    public void execute(SchedulableContext param1) {
        batch5 b = new batch5();
        Database.executeBatch(b);

    }
}