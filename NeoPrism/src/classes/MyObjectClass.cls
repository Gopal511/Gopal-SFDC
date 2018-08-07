public class MyObjectClass
{
   public void accountData()
  	{
          List<Account> objAcc = [Select id,Name,AccountNumber,AnnualRevenue from Account];
          System.debug(objAcc);
          System.debug(objAcc.size());
  	}
 	
 	public void accountDataWhereCondition()
  	{
          List<Account> objAcc = [Select id,Name,AccountNumber,AnnualRevenue from Account where AnnualRevenue <=350000000];
          System.debug(objAcc);
          System.debug(objAcc.size());
  	}
 	public void createNewRecord()
 	{
    	Position__c obj = new Position__C(Postion_Title__c='This is Created from Apex');
     	obj.Status__c = 'New Postion';
     	insert obj;
 	}
 	public void updateRecords()
 	{
       	List<Account> objAcc = [Select id,Name,AccountNumber,AnnualRevenue from Account where AnnualRevenue <=350000000];
       	for(Integer i=0;i<objAcc.size();i++)
       	{
           	Account tmp = objAcc.get(i);
               tmp.AnnualRevenue = tmp.AnnualRevenue+99;
       	}
      	update objAcc;
 	}
	public void backupAccounts(String accName)
	{
    	Account acc1 = [Select id,name,AnnualRevenue from Account where name =: accname];
        Account_History__c obj2 = new Account_History__c(Account_Name__c=acc1.name,Annual_Revenue__c=acc1.AnnualRevenue,delete__c=true);
    	insert obj2;
    	delete acc1;
	}
    /*public void accSimpleInterest()
    {
        List<Account_History__c> objAccHist=[select id,name,Annual_revenue__c,Time__c,Rate__c,Simple_Interest__c from Account_History__c];
    }
    for(Account_History__c temp:objAccHist)
    {
        simpleInterest smp=new simpleInterest();
        smp.SimpleInterest(temp.Annual_Revenue__c,temp);
    }
    public void accBonus()
    {
        List<Account> objAcc=[Select id,Name,AccountNumber,AnnualRevenue,Bonus__c from Account where AnnualRevenue !=null];
        for(Account temp:objAcc)
        {
            Utility objBns=new Utility();
            Double d=objBns.bonus
        }
    }*/
    Public void suffix()
    {
      List <Account> objAcc=[select id,Name from Account];
      for(Account a:objAcc)
      {
       a.Name=a.Name+' '+'Inc' ;
      }
     Update objAcc;
    }
    public void removeSuffix()
    {
      List <Account> objAcc=[select id,Name from Account];
      for(Account a:objAcc)
      {         
           //a.Name=objAcc.removeEnd('Inc');   
           a.Name=a.Name.removeEnd('Inc');                
      }
      Update objAcc;  
    }  
}