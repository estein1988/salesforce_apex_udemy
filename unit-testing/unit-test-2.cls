@isTest
public class AccountTriggerTest {
    @isTest 
    static void TestNewAccountContact() { //test methods don't have any parameters
        //Arrange
        Account acct = new Account();
        acct.Name = 'Unit Test Account'; //name is required field on account
        
        //Act
        insert acct;

        //Assert
        List<Contact> contacts = [
            SELECT Id, FirstName, LastName
            FROM Contact 
            WHERE FirstName = 'Hello'
            AND LastName = 'World'
            AND AccountId = :acct.id
        ];
        System.assert(contacts.size() > 0, 'Related contact not found'); //assert takes in a boolean condition. if it's true the test passes, if false, fails. takes in a second optional parram, a message that displays only if fails
    }
}

//arrange: creating any test data needed to run the test
//act: execute code being tested
//assert: validating results of the test