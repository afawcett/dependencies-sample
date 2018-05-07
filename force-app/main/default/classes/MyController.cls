public with sharing class MyController {
    public MyController() {
        Widget__c w = [select Id, SomeFieldOnWidget2__c from Widget__c limit 1];
        String test = Label.Test;
        MySetting__c setting = MySetting__c.getInstance();
        List<Schema.FieldSetMember> x = SObjectType.Widget__c.FieldSets.MyFieldSet.getFields();
        PageReference p = Page.MyPage;
    }
}
