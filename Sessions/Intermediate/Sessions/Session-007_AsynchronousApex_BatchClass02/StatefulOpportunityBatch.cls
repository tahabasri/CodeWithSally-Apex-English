public class StatefulOpportunityBatch implements Database.Batchable<SObject>, Database.Stateful {

    private Integer updateCount = 0;

    public Database.QueryLocator start(Database.BatchableContext context) {
        return Database.getQueryLocator([
            SELECT Id, Business_Type__c 
            FROM Opportunity 
            WHERE Business_Type__c = NULL
        ]);
    }

    public void execute(Database.BatchableContext context, List<Opportunity> scope) {
        for (Opportunity o : scope) {
            o.Business_Type__c = 'Legacy'; //New Business	
            updateCount++;
        }
        update scope;
    }

    public void finish(Database.BatchableContext context) {
        System.debug('🔥 Total Opportunities Updated: ' + updateCount);
    }
}

/*
How to run it in Developer Console

ID batchprocessid = Database.executeBatch(new StatefulOpportunityBatch());

AsyncApexJob aaj = [SELECT Id, Status, JobItemsProcessed, TotalJobItems, NumberOfErrors 
                    FROM AsyncApexJob WHERE ID =: batchprocessid ];

System.debug('ID: '+batchprocessid);
system.debug('Status: '+aaj.Status);
system.debug('TotalJobItems: '+aaj.TotalJobItems);
*/