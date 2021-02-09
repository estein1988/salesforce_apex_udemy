Account acct = new Account(Name='My Test Account');
System.debug('before insert' + acct);

insert acct; //creates a new record of account AND creates unique id

System.debug('after insert' + acct);

//Query Editor
SELECT Id, Name, AnnualRevenue
FROM   Account
WHERE  Name = 'My Test Account'

//Change annual revenue through dev console
Account acct = [
    SELECT	Id,
    		Name,
    		AnnualRevenue
    FROM	Account
    WHERE	Id = '0014x00000Df04uAAB'
];

acct.AnnualRevenue = 1000000;
update acct;

/////////////////////////////////////////////////////////////////////////////
Account acct2 = new Account(Name='My Test Account 2');
System.debug('Before upsert: ' + acct2);

upsert acct2; //use if not sure if object already exists in the database (creates record AND creates unique id)

System.debug('After upsert: ' + acct2);

/////////////////////////////////////////////////////////////////////////////
//delete account through dev console
Account acct = [
    SELECT	Id,
    		Name,
    		AnnualRevenue
    FROM	Account
    WHERE	Id = '0014x00000Df04uAAB'
];

delete act;

/////////////////////////////////////////////////////////////////////////////
//creates 10 new accounts
List<Account> accounts = new List<Account>();
for(Integer i = 1; i < 11; i++){
    Account acct = new Account();
    acct.name = 'Test Account';
    accounts.add(acct);
}

insert accounts;

//query the ten new accounts through the query editor
SELECT  Id,
        Name,
        AnnualRevenue
FROM    Account