@isTest
public class MathUtilityTest {
   
    @isTest 
    static void testAddition(){
        //Preparing Data
        Integer num1 = 5;
        Integer num2 = 10;
        
        //execute code you want to test 
        Integer result= MathUtility.addNumbers(num1,num2);
        
        //Validation 
        //System.assertEquals(15, result, 'Addition result should be 15');
        Assert.areEqual(15, result, 'Addition result should be 15');
    }
    
    @isTest 
    Static void testDivision(){
        //Prepare Data
        Decimal decimalValue1 = 10;
        Decimal decimalValue2 = 2;
        
        //Execute code we want to test 
        Decimal result= MathUtility.divideNumbers(decimalValue1,decimalValue2);
        
        //Validation
        //Assert.areEqual(5,result,'division value should be 5');
    }
    
    @isTest 
    Static void testDivisionByZero(){
        //Prepare Data
        Decimal decimalValue1 = 10;
        Decimal decimalValue2 = 0;
        
        //Execute code we want to test
        try{
            Decimal result= MathUtility.divideNumbers(decimalValue1,decimalValue2); //10
			Assert.fail('Expected an exception for division by zero');
        }Catch(Exception ex){
            //Assert.areEqual('Cannot divide by zero', ex.getMessage(), 'Expected division by zero error message');
        }
    }
}