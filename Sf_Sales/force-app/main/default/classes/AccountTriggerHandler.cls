public class AccountTriggerHandler {
    public static void contactCreated(List<account> accList){
        //List<account> acList= [Select id, name from Account where Id IN : accList];
        List<contact> conList = new List<contact>();
        for(account acc : accList){
            contact con = new contact();
            con.AccountId = acc.Id;
            con.LastName =acc.Name;
            con.Description = acc.Description;
            conList.add(con);
        }
        insert conList;
    }
    public static void NoOfContacts(List<account> accList){
        List<contact> conList = new List<contact>();
        for(account acc :accList){
            contact con = new contact();
            con.Email = acc.Description;
            conList.add(con);
        } 
        update conList;
        
    }
    public static void autoPopulateShippingAddress(List<account> accList){
        for(account acc : accList){
            acc.BillingCity = acc.ShippingCity;
            acc.BillingCountry = acc.ShippingCountry;
            
        }
    }
}