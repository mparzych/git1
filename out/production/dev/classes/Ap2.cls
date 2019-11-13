
public with sharing class Ap2 {
    @InvocableMethod
    public static void deleteRecords() {
        String s = 'select Id, Name from Account limit 10';
//        List<Account> l = s;;


//        Database.query(s);

        Database.delete(s);
    }



}