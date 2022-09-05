trigger AccountTrigger on Account (after insert, after update, before insert) {
    if(trigger.isInsert && trigger.isAfter){
        AccountTriggerHandler.contactCreated(trigger.new);
    }
    if(trigger.isUpdate && trigger.isAfter){
        AccountTriggerHandler.NoOfContacts(trigger.new);
    }
     if(trigger.isInsert && trigger.isBefore){
        AccountTriggerHandler.autoPopulateShippingAddress(trigger.new);
    }
}