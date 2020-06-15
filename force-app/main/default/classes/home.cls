public class home {
	@AuraEnabled
    public static List<Account> acc(){
        List<Account> account = [select name,phone,rating,website from Account limit 1];
        System.debug('Account'+account);
        return account;
    }
}