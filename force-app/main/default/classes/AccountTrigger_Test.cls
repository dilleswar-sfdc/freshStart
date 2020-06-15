@isTest
public class AccountTrigger_Test {
    @isTest static void TestCreateNewAccountInBulk(){
        List<Account> acc = new List<Account>();
        for (Integer i=0;i< 200 ;i++){
            Account a = new Account(name='test'+i);
            acc.add(a);
        }
        Test.startTest();
        	insert acc;                               
        Test.stopTest();
        List<Account> accdb = [Select id from Account];
        System.assertEquals(200,accdb.size());
        list<Opportunity> ooppdb = [Select id from Opportunity];
        System.assertEquals(200,ooppdb.size());
    }
}