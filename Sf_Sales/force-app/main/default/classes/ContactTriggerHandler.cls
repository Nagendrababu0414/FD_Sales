public class ContactTriggerHandler {
    public static void contactDescriptionPopulate(List<contact> conList){
       List<account> accList = new List<account>();
        set<id> accIds = new set<id>();
        for(contact con : conList){
            if(con.AccountId!=null){
            accIds.add(con.AccountId);
            }
                
                }
        
    }
}