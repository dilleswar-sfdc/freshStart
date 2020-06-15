public class AccountHandler {
    public static void createNewOpportunity(List<Account> acct){
        list<Opportunity> oppli = new list<Opportunity>();
        for(Account a:acct){
            Opportunity opp = new Opportunity();
            opp.Name = a.Name+'opportunituy';
            opp.AccountId= a.Id;
            opp.StageName ='Prospecting';
            opp.CloseDate = System.today().addMonths(1);
          oppli.add(opp);
        }
        if(oppli.size() > 0)
            insert oppli;
    }
}