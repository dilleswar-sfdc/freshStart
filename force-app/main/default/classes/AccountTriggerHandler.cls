public class AccountTriggerHandler {
    public static void CreateAccounts(List<Account> acc){
        list<Account> ac = new List<Account>();
        for(Account a:acc){
            a.ShippingState = a.BillingState;
        }
    }
}