/**
 * Created by mparzych004 on 05.11.2019.
 */

@isTest
public with sharing class Klas1Test {

    static Klas1 k = new Klas1();

    @isTest
    public static void revIntTest() {
        System.assertEquals(321, k.revInt(123));
        // System.assertEquals(-321, k.revInt(-123));
        System.assertEquals(3, k.revInt(300));
        System.assertEquals(2, k.revInt(2000000000));
    }

    @isTest public static void revRecTest() {
        System.assertEquals(87654321, k.revRec(12345678, 0));
        List<SObject> l = Test.loadData(Account.sObjectType, 'name1');


    }

}