/**
 * Created by mparzych004 on 12.11.2019.
 */

public with sharing class extensionToVfExtension {
    public List<Position__c> l = new List<Position__c>();
    public List<Position__c> getPositions() {
        return [select Position__c.]
    }

}