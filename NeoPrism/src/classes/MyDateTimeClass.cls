public class MyDateTimeClass
{
    public void DateTimeMethod()
    {
      List<AccountHistory> ahlist = [SELECT Field,OldValue,NewValue FROM AccountHistory];
      for(AccountHistory ah : ahlist) 
      {
       System.debug('Field: ' + ah.Field);
       if (ah.field == 'MyDatetime__c') 
       {
        Datetime oldValue = Datetime.valueOf(ah.OldValue);
        Datetime newValue = Datetime.valueOf(ah.NewValue);
        system.debug('Old Value is =' +oldValue);
        system.debug('New Value is =' +newValue);
       }        
      }
    }
}