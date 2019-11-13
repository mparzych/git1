/**
 * Created by mparzych004 on 11.10.2019.
 */

@IsTest
public with sharing class Ex2Test {

    @IsTest public static void isDivisibleTest() {
        Ex2 ex = new Ex2();
        System.assertEquals(true, Ex2.isDivisible(11));
        System.assertEquals(true, Ex2.isDivisible(15));
    }

    @IsTest public static void climbStairTest() {
        Ex2 e = new Ex2();
        System.assertEquals(e.climbStair(9), 55);
        System.assertEquals(e.climbStair(10), 89);
        System.assertEquals(e.climbStair(0), 1);
        System.assertEquals(e.climbStair(-1), 0);
        System.assertEquals(e.climbStair(22), 28657);
    }






}