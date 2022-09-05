public class CountOfContactsHandler {
public void updateCount(List<Contact> conList) {
        Set<Id> idList = new Set<Id>(); 
        for(Contact c : conList) {
            if(c.AccountId != null) {
                idList.add(c.AccountId);
            }
        }
        List<Account> accList = [SELECT Name, Count_of_Contacts__c, OwnerId from Account WHERE id in:idList];
        Integer count = [SELECT count() from Contact WHERE AccountId in :idList];
        for(Account a : accList) {
            a.Count_of_Contacts__c = count;
        }
        update accList;
    }
    public void deleteContact(List<Contact> conList) {
        Set<Id> idList = new Set<Id>();
        for(Contact c : conList) {
            if(c.AccountId != null) {
                idList.add(c.AccountId);
            }
        }
        List<Account> accList = [SELECT Name, Count_of_Contacts__c from Account WHERE id in : idList];
        Integer count = [SELECT count() from Contact WHERE AccountId in :idList];
        for(Account a : accList) {
            a.Count_of_Contacts__c = count;
        }
    }
}