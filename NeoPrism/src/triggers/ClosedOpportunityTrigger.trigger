trigger ClosedOpportunityTrigger on Opportunity (before insert, before update) {
	list<task> lis =new list<task>();
    for(Opportunity o: Trigger.New)
        if(o.stagename=='Closed Won')
        	lis.add(new Task(Subject='Follow Up Test Task', WhatId=o.Id));
    insert lis;
}