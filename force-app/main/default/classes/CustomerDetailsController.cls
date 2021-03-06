public with sharing class CustomerDetailsController {
    public CustomerDetailsController() {
    }

    @AuraEnabled(Cacheable=true)
    public static List<Customer_Detail__c> getAllCustomers(){
        List<Customer_Detail__c> customerDetails;
        customerDetails = [SELECT Name,Address__c,Age__c,Date_of_Joining__c,Leaving_Amount__c,Favourite_Fruit__c FROM Customer_Detail__c WHERE Leaving_Amount__c=100];
        return customerDetails;
    }
}
