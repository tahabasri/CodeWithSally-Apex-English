public class RollbackDemo {

    public static void checkNoTryCatchBehaviour(){
        // No try-catch: Contact insert fails, and Account insert rolls back automatically
        Account acc = new Account(Name = 'Test AccountRollback');
        insert acc;
        
        Contact con = new Contact(FirstName = null, AccountId = acc.Id); // Invalid data
        insert con; // Will fail and rollback the entire transaction
    }
    
    public static void checkTryCatchBehavirAlone(){
        // Explicit rollback when an exception occurs
        try {        
            // Insert Account
            Account acc = new Account(Name = 'Test AccountRollback');
            insert acc;
        
            // Attempt to insert an invalid Contact
            Contact con = new Contact(FirstName = null, AccountId = acc.Id); // Missing FirstName
            insert con; //throw an exception and no rollback will happen here!!!
        
        } catch (DmlException e) {
            System.debug('Error occurred: ' + e.getMessage());
        }
    }
    
    public static void checkSavepointBehavior(){
        // Explicit rollback when an exception occurs
        Savepoint sp = Database.setSavepoint();
        try {
            // Insert Account
            Account acc = new Account(Name = 'Test AccountRollback2');
            insert acc;
        
            // Attempt to insert an invalid Contact
            Contact con = new Contact(FirstName = null, AccountId = acc.Id); // Missing FirstName
            insert con;
        
        } catch (DmlException e) {
            System.debug('Error occurred: ' + e.getMessage());
            Database.rollback(sp); // Rollback to savepoint
        }
    }
}