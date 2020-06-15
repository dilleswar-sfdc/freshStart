public class uitest {
	@AuraEnabled
    public static list<Account> accdata(){
        list<Account> a = [select name,phone from Account limit 1];
        System.debug('--a--'+a);
        return a;
    }
}