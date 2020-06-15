@isTest
public class AccountTriggerTest {
    @isTest static void accTest(){
        List<Account> a = new List<Account>();
        for(Integer i= 0;i< 200;i++){
            Account aa =new Account(name ='test'+i,BillingState = 'CA');
            a.add(aa);
        }
        Test.startTest();
         insert a;
        Test.stopTest();
        
        List<Account> ashipping =  [Select id,ShippingState from Account where ShippingState = 'CA'];
        System.assertEquals(200, ashipping.size());
    }
}