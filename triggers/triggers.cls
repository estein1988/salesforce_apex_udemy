//automated tasks
//Dev Console -> File -> New -> Apex Trigger

//Name: AccountTrigger
//sObject: Account

//before trigger
trigger AccountTrigger on Account (before insert){
    for (Account acct: Trigger.new) { //Trigger is a built-in class
        acct.Active__c = 'Yes';
    }
}
//File -> Save

//same trigger, but after trigger
//dml statement required
trigger AccountTrigger on Account (after insert){
    for (Account acct: Trigger.new) {
        acct.Active__c = 'Yes';
        update acct; //dml statement required
    }
}

//different trigger: after trigger
trigger AddContactToAccountTrigger on Account (after insert){
    List<Contact> contacts = new List<Contact>(); //gets around 150 govenor limit (common with data imports)
    for (Account acct: Trigger.new) {
        Contact c = new Contact();
        c.FirstName = 'Hello';
        c.LastName = 'World';
        c.AccountId = acct.id //wouldn't have access to account id with a before statement
        contacts.add(c);
    }
    insert contacts
}
