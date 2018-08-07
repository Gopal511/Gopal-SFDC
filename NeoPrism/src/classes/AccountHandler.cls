public class AccountHandler {
    public static Account insertNewAccount(String accName){
        if(accName!=''){
            try{
                Account a= new Account(name=accName);
                insert a;
                system.debug('Bravo Andrè! Account created');                
          		return a;
            }catch(Exception e){
                system.debug('Account not created');
                return null;
            }
        }else{
            return null;
        }
    }
}