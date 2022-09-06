public with sharing class AppendBatch implements Database.batchable(<Sobject>) {
    public Database.QueryLocator start(Database.batchable bc) {
       Return Database.QueryLoacator(Select id, name from account);
    }
    public void execute(Database.batchable bc, List<account> fromStartMethod){
        for(account acc : fromStartMethod){
            acc.name = 'CFC -'+acc.name;
        }
        update fromStartMethod;
    }
    public void finish(Database.batchable bc){}
}
