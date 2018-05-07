trigger WidgetTrigger on Widget__c (before insert) {
    Widget__c w = [select Id, SomeFieldOnWidget2__c from Widget__c];
    String test = Label.Test;
    Type c = MyTest.class;
}