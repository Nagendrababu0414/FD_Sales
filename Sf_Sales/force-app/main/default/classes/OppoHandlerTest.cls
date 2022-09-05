@isTest
public class OppoHandlerTest {
@isTest
    static void testOppo(){
        List<opportunity> opList = new List<opportunity>(); 
        opportunity op = new opportunity();
        op.Name = 'Murali';
        op.Amount =24258963;
        op.StageName ='closed'; 
        op.CloseDate = system.today();

        opList.add(op);
        
       insert opList;
         Oppohnadler.oppUpdate(opList);
        
    }
    
}