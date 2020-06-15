trigger AccountTrigger on Account (before insert) {
     //   if(Trigger.isAfter && Trigger.isInsert){
      //      AccountHandler.createNewOpportunity(Trigger.New);
      //  }
      if(Trigger.isBefore && Trigger.isInsert)
		AccountTriggerHandler.CreateAccounts(Trigger.New);
}