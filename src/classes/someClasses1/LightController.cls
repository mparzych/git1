/**
 * Created by mparzych004 on 11.10.2019.
 */

public with sharing class LightController {
    @AuraEnabled
    public static String getString() {
        return 'abcdefgh';
    }

}