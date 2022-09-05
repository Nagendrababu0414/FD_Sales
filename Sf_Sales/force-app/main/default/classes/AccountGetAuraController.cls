public class AccountGetAuraController {
    @auraEnabled
    public static List<account> getAccountRecords(){
        List<account> accList =[select id, name from account];
        return accList;
    }
}