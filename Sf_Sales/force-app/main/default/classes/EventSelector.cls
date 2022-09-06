public with sharing class EventSelector {
    @testvisible
       private static EventSelector instance;
        public static EventSelector getInstance(){
            if(instance == null){
                instance = new EventSelector();
            }
            return instance;
            }
        
    //Class Name : EventApexController
         
        public  list<Event> getevent(String evid){
         if(!Event.SObjectType.getDescribe().isAccessible()){
            return null;
          }
          else{
            return [SELECT Id, AccountId FROM Event WHERE Id = :evid WITH SECURITY_ENFORCED];   // Method:fetchEventUrl
          }
        }
          
         public list<Event> eventList(String eventId){ 
          if(!Event.SObjectType.getDescribe().isAccessible()){
            return null;
          } 
          else{
            
            return [Select Id, AccountId, Number_of_Dentist__c, Number_of_Hygienist__c from Event where id =: eventid WITH SECURITY_ENFORCED LIMIT 1 ];        //Method: updateDentistHygienist
           } 
        }
    
    
    //ClassName: AccountTriggers
         public List<AggregateResult> aggEvents(Date dt, list<Account> newTriggerLst1){
          if(!Event.SObjectType.getDescribe().isAccessible()){
            return null;
          }
          else{
            return[SELECT max(CallDate__c)MaxCDateWhatId,Completed__c,Chk__c FROM Event 
                                                   WHERE Chk__c = False
                                                   AND CallDate__c <= :dt
                                                   AND Completed__c = True 
                                                   AND WhatID in :NewTriggerLst1 WITH SECURITY_ENFORCED
                                                   Group By WhatId,Completed__c,Chk__c];          //Method: PreLoadData
             }
          }
      }