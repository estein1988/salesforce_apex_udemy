//SELECT Id, Name
//FROM sObject
//WHERE Annual Revenue > 50000000
//OR Number of Employees > 1000
//ORDER BY Annual Revenue DESC (Ascending is the default)
//LIMIT 3
//* not available to select all fields like SQL

//Built on Workbench Object Wizard tool:
//(Google Workbench Salesforce)
SELECT FORMAT(AnnualRevenue),Id,Name,NumberOfEmployees FROM Account WHERE AnnualRevenue > 50000000 AND NumberOfEmployees > 2000 ORDER BY AnnualRevenue DESC NULLS FIRST LIMIT 4;

//Built in Dev Console (Anymous Window)
//Wrap in []
Integer revenue = 50000000;
Integer employees = 2000;

List<Account> accountList = [
    SELECT 	Id,
    		FORMAT(AnnualRevenue),
    		Name,
    		NumberOfEmployees 
    FROM 	Account 
    WHERE 	AnnualRevenue > :revenue 
    AND 	NumberOfEmployees > :employees 
    ORDER BY AnnualRevenue DESC NULLS FIRST 
    LIMIT 	4
];

System.debug('Number of Accounts: ' + accountList.size());

for(Account acct : accountList) {
    System.debug(acct);
}

/////////////////////////////////////////////////////////////////////
Id accountId = '0016g00000DSWXzAAP'

Account acct = [
    SELECT 	Id,
    	    FORMAT(AnnualRevenue),
    		Name,
    		NumberOfEmployees 
    FROM 	Account 
    WHERE 	Id = :accountList
];

System.debug(acct)