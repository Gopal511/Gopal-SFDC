trigger ExampleTrigger on Contact (after insert,after delete) {
    if(Trigger.isInsert){
        Integer recordCount=Trigger.New.size();
        EmailManager.sendMail('doppalapudi.venu511@gmail.com','Trailhead Tigger Tutorial',recordCount +'contact(s) were inserted.');     
    }
    else if(Trigger.isDelete){
        
    }
}