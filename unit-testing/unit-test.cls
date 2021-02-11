//trigger to test:
trigger AddContactToAccountTrigger on Account (after insert){
    List<Contact> contacts = new List<Contact>();
    for (Account acct : Trigger.new) {
        Contact c = new Contact();
        c.FirstName = 'Hello';
        c.LastName = 'World';
        c.AccountId = acct.id; 
        contacts.add(c);
    }
    insert contacts
}

//file -> new -> apex class
//name: AccountTriggerTest
@isTest
public class AccountTriggerTest {
    @isTest
    static void TestNewAccountContact(){
        // Arrange
        Account acct = new Account();
        acct.Name = 'Unit Test Account';

        // Act
        insert acct;

        //Assert
        List<Contact> contacts = 
            [SELECT Id, FirstName, LastName
            FROM    Contact
            WHERE   FirstName = 'Hello'
            AND     LastName = 'World'
            AND     AccountId = :acct.Id];
        System.assert(contacts.size() > 0, 'Related contact not found');
    }
}

//save class
//to test, go to test tab, 'new run'
//results displayed in task tab