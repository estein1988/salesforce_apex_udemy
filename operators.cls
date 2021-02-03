String x = 'Hello';
Integer y = 10;
System.debug(x + y) //'Hello 10' - converts integer to a string, no error

DateTime d = DateTime.newInstance(2020, 5, 10, 0, 0, 0);
System.debug(d + 1) //adds 1 day to DateTime

Boolean x = true;
Boolean y = false;
System.debug(x + y) //tossess error, cannot add 2 booleans

Integer x = 10;
System.debug(x++) // evaluates to 10;

Integer x = 10;
System.debug(++x) // this one goes to 11;

Integer x = 10;
Integer y = 10;
System.debug(x == y) //true

String a = 'abc';
String b = 'ABC';
System.debug(x == y) //true - Apex isn't case sensitive

///////sObjects/////////////
Account a = new Account(Name = 'My Account a');
Account b = new Account(Name = 'My Account b');
Account c = b; //c overwrites instance b in memory;
System.debug('a: ' + a);
System.debug('b: ' + b);
System.debug('c: ' + c);
System.debug(a == b); //false
System.debug(b === c); // true

Account z = new Account(Name = 'My Account z');
Account y = new Account(Name = 'My Account z');
System.debug(z == y) //true (same field name)

//Logical operators
Boolean x = true;
Boolen y = false;
System.debug(!x) //false