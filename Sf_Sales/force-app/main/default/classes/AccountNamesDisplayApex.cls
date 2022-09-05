public class AccountNamesDisplayApex {
@AuraEnabled
    public static List<Account> accNamesRetrieve(){
        List<Account> lst = [SELECT name from Account];
         Return lst; 
    }
    @AuraEnabled
    public static List<Account> selectAccountRecord(String anm){
        List<Account> accs=[SELECT Name, BillingCity, Phone, Industry, Rating FROM Account where Name=:anm];
        return accs;
    }
}