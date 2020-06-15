public class AccountUtils {
    public static List<Account> accountsByState (String state){
        List<Account> acc = [Select Name ,BillingState from Account where BillingState =: state ];
		return acc;
    }
}