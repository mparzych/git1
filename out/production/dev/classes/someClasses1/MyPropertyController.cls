public with sharing class MyPropertyController {
    @AuraEnabled
    public static List<Account> findProperties (Id recordId, Decimal priceRange) {
        return [select Id from Account];
    }
}
