public class OppoFiledUpdateTriggerHandler {
    public static void opportunityFieldUpdate(List<opportunity> oppList){
        for(opportunity opp: oppList){
            if(opp.Amount<1000){
                opp.Profille__c ='Low';
            }
            if(opp.Amount>1000){
                opp.Profille__c ='High';
            }
        }
    }
    public static void updateAllList(){
        List<opportunity> oppList =[select id, profille__c,Amount from opportunity];
        for(opportunity opp :oppList){
            if(opp.Amount<1000){
                opp.Profille__c ='Low';
            }
            if(opp.Amount>1000){
                opp.Profille__c ='High';
            }
            if(opp.Amount!=null){}
        }
         update oppList;
    }
    public static void updateNotificationDate(List<opportunity> oppList){
        for(opportunity opp :oppList){
            if(opp.CloseDate!=null){
               opp.Notification_Date__c =opp.CloseDate+5 ;
            }
            
        }
    }
  
}