public with sharing class EnglishPropertySimilarSalesEmailAction {
    

    @InvocableMethod(
        label='English Similar Properties for Sales Email'
        description='Returns JSON with main property + similar properties for sales email prompts.'
        capabilityType='PromptTemplateType://einstein_gpt__salesEmail'
    )
    public static List<Response> getSimilarProperties(List<Request> requests) {
        List<Response> lstResponses=new List<Response>();

        // Only one request at a time for Sales Email, but still bulk-safe
        Request requestObj = (requests == null || requests.isEmpty()) ? null : requests[0];

        // Default ResponseDetails
        if (requestObj != null && requestObj.relatedObject != null) {
            // Find similar properties
            List<Property__c> lstSimilarProperties = findSimilarProperties(requestObj.relatedObject);

            //Prepare response
            String jsonOuptut=JSON.serialize(lstSimilarProperties);
            Response responseObj = new Response();
            responseObj.Prompt = jsonOuptut;
            lstResponses.add(responseObj);
        }
        return lstResponses;
    }

    private static List<Property__c> findSimilarProperties(Property__c mainPropertyObj) {
        return [SELECT  Name, City__c, Beds__c, Baths__c, Price__c, Picture__c, Status__c 
                FROM Property__c WHERE City__c =:mainPropertyObj.City__c and Id!=:mainPropertyObj.ID
                Order by Price__c asc LIMIT 10];
    }

    public class Request{
        @InvocableVariable 
        public User Sender;      

        @InvocableVariable 
        public Contact Recipient;
        
        @InvocableVariable 
        public Property__c RelatedObject;
    }

    public class Response{
        @InvocableVariable(required=true) 
        public String Prompt; // JSON output
    }
}