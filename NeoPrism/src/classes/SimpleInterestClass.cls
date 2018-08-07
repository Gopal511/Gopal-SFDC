public class SimpleInterestClass 
{
    public void SimpleInt()
    {
        List<Account> objAcc = [Select id,Principal__c,Time_In_Years__c,Revenue__c from Account];
        System.debug(objAcc);
        System.debug(objAcc.size());
    }
    
    public void backupAccounts(String accName)
	{
    	Account acc1 = [Select id,Principal__c,Revenue__c,Time_In_Years__c from Account where name =: accname];
        Account_History__c obj2 = new Account_History__c(Account_Name__c=acc1.name,Annual_Revenue__c=acc1.AnnualRevenue,delete__c=true);
    	insert obj2;
    	delete acc1;
	}

}