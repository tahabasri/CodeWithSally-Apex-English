public class TryCatchDemo {

    //test catching specific error 
    public static void runErrorScenarios() {
        try {
            // Simulate a math error (division by zero)
            //System.debug(ErrorHandlingScenarios.mathError(10,0));
            System.debug(ErrorHandlingScenarios.mathError(10,2));
            
            System.debug(ErrorHandlingScenarios.missingDataError('nonexistent@example.com'));
            //System.debug(ErrorHandlingScenarios.missingDataError('bond_john@grandhotels.com'));
            
            System.debug(ErrorHandlingScenarios.dmlError(null));
            //System.debug(ErrorHandlingScenarios.dmlError('Account1'));
            
            
            ErrorHandlingScenarios.governorLimitError(100);        
        } catch (MathException e) {  
            System.debug('Math Error: ' + e.getMessage()); 
        } catch (QueryException e){
            System.debug('Query Error: ' + e.getMessage());
        } catch (Exception e) {  
            System.debug('Unexpected Error: ' + e.getMessage()); 
        
        } finally {  
            System.debug('✅ Cleanup: This runs regardless of success or failure.');
        }
    }

	//catching custom exception    
    public static void createAndLogAccount() {
        try {
            // Attempt to create an account without Industry (will throw MissingRequiredFieldException)
            AccountService.createAccount('TechCorp', '');
        
        } catch (MissingRequiredFieldException e) {  
            System.debug('Custom Exception Caught: ' + e.getMessage());  
        
        } catch (Exception e) {  
            System.debug('Unexpected Error: ' + e.getMessage()); 
        }final