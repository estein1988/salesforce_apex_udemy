Account acct = new Account();
acct.Name = 'My Account';
acct.AccountNumber = 'ABC123';
System.debug(acct);

//altnerate syntax
Account acctAlt = new Account(Name='My Account', AccountNumber='ABC123');
System.debug(acctAlt)

//custom object
Student__c student = new Student__c();
student.Email__c = 'student1@gmail.com';
System.debug(student)

//alternate syntax
Student__c student = new Student__c(Email__c = 'student1@gmail.com');
System.debug(student)