/**
 * Created by mparzych004 on 21.10.2019.
 */

public with sharing class xxx {

    public static void schemaVoid() {
//        Map<String , Schema.SObjectType> m = Schema.getGlobalDescribe();
//        System.debug(m);

        Schema.DescribeFieldResult ac = Account.Industry.getDescribe();
        List<Schema.PicklistEntry> p = ac.getPicklistValues();
        String  s1 = Account.Industry.getDescribe().getLabel();
        String  s2 = Account.Industry.getDescribe().getCalculatedFormula();

        List<Schema.RecordTypeInfo> recordTypeInfo = Case.SObjectType.getDescribe().getRecordTypeInfos();

        System.debug('ac: ' + ac);
        System.debug('p: ' + p);
        System.debug('s1: ' + s1);
        System.debug('s2: ' + s2);
        System.debug(recordTypeInfo);

    }
    public void m() {
        schemaVoid();
        System.debug('xxxxxxxx');
    }

}