public class TestTryCatchPlacement {
	
    public static void testCase1(){
        List<Account> accounts = new List<Account>{
            new Account(Name='TestA1'),
            new Account(Name='TestA2'),
            new Account(),  // Missing Name (will cause DMLException)
            new Account(Name='TestA4')
        };
        
        try {
            for (Account acc : accounts) {
                insert acc;
            } 
        } catch (DmlException e) {
            System.debug('Error Occurred' + e.getMessage());
        }
    }
    
    public static void testCase2(){
        List<Account> accounts = new List<Account>{
            new Account(Name='TestB1'),
            new Account(Name='TestB2'),
            new Account(),  // Missing Name (will cause DMLException)
            new Account(Name='TestB4')
        };
        
       	for (Account acc : accounts) {
            try {
                insert acc;
            } catch (DmlException e) {
            	System.debug('Error Occurred' + e.getMessage());
        	}
        } 
    }
    
    public static void testCase3(){
        List<Account> accounts = new List<Account>{
            new Account(Name='TestC1'),
            new Account(Name='TestC2'),
            new Account(),  // Missing Name (will cause DMLException)
            new Account(Name='TestC4')
        };
        
       	for (Account acc : accounts) {
            insert acc;
        } 
    }
}