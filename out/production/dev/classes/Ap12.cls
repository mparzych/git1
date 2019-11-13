/**
 * Created by mparzych004 on 16.10.2019.
 */

public without sharing class Ap12 {

    public with sharing class Ap113 {

    }

    private without sharing class Ap222 {

    }


    class Ap13 {
        void m2() {
            System.debug('abcdefgh');
        }
    }


    public void m() {
        Ap12 ap12 = new Ap12();
        Ap13 a = new Ap13();
        a.m2();
    }

    static {
        System.debug('abc');
    }

}