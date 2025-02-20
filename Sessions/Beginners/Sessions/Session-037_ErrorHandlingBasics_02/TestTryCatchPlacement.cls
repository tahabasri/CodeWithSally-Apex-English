public class TestTryCatchPlacement {
    
    public static void testTryCatchScenario(){
        
        /*
        try{
            Account acc=new Account(); //no name so it will throw an exception
           insert acc;
            
           Contact contactobj=new Contact(LastName='Test1'); //we won't reach this line of code , won't be created
           insert contactObj;
        }catch(exception ex){
            System.debug('Error Occurred' + ex.getMessage());
        }*/
        //more code here?? 
        //
        
        
        try{
            Account acc=new Account(); //no name so it will throw an exception
           insert acc;
        }catch(exception ex){
            System.debug('Error Occurred' + ex.getMessage());
        }
        //more code here?? Yes
        
        try{
           Contact contactobj=new Contact(LastName='Test1'); //this line is reachable now and will be executed 
           insert contactObj;
        }catch(exception ex){
            System.debug('Error Occurred' + ex.getMessage());
        }
        
    }
	
    //Test-Thursday1 and Test-Thursday2 only created
    public static void testCase1(){
        List<Account> accounts = new List<Account>{
            new Account(Name='Test-Thursday1'),
            new Account(Name='Test-Thursday2'),
            new Account(),  // Missing Name (will cause DMLException)
            new Account(Name='Test-Thursday4')
        };
        
        try {
            for (Account acc : accounts) {
                insert acc; //insert Test-Thursday1 (no issues), Test-Thursday2 (no issues), Empty Name--> threw an exception
             } 
        } catch (DmlException e) {
            System.debug('Error Occurred' + e.getMessage());
        }
        
    }
    
    //TestBella1, TestBella2, TestBella4 got created
    public static void testCase2(){
        List<Account> accounts = new List<Account>{
            new Account(Name='TestBella1'),
            new Account(Name='TestBella2'),
            new Account(),  // Missing Name (will cause DMLException)
            new Account(Name='TestBella4')
        };
        
       	for (Account acc : accounts) {
            try {
                insert acc; // TestBella1 , TestBella2, () exception, testBella4
            } catch (DmlException e) {
            	System.debug('Error Occurred' + e.getMessage());
        	}
            //there is more to run
        } 
    }
    
    //no records got created!!!
    public static void testCase3(){
        List<Account> accounts = new List<Account>{
            new Account(Name='TestCat1'),
            new Account(Name='TestCat2'),
            new Account(),  // Missing Name (will cause DMLException)
            new Account(Name='TestCat4')
        };
        
       	for (Account acc : accounts) {
            insert acc;
        } 
    }
}