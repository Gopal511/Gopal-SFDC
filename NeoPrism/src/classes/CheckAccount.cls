@RestResource(urlMapping='/Show Accounts/*')
global class CheckAccount
{
 @HttpGet
 global static List<Account> getAccount()
 {
  List<Account> lst;
  try
  {
   lst=[select name,phone from Account];
   return lst;
  }
  catch(Exception ex)
  {
   system.debug('Error'+ex.getMessage());
  }
  return lst;
 }
}