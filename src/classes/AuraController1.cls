/**
 * Created by mparzych004 on 24.10.2019.
 */

public with sharing class AuraController1 {

    @AuraEnabled
    public static Integer abc() {
        return 123;
    }

    @AuraEnabled
    public static String retString() {
        return '1qaz 2wsx';
    }

    @AuraEnabled
    public static Integer add() {
        return 11;
    }

    @AuraEnabled
    public static List<String > returnListOfStrings() {
        List<String > l = new List<String>();
        l.add('abc');
        l.add('bcd');
        l.add('efg');
        return l;
    }

}