String a = 'Hello';
String b = 'World';
System.debug(a + b);

Integer i = 10;

//apex strongly typed but this didn't toss an error. Need a linter maybe? 
Integer j = 'abc';

Decimal a = 5.1;
Decimal b = 2.2;
Decimal c = a + b;
System.debug(c);

Boolean b = false;
Boolean c = true;
System.debug('b: ' + b);
System.debug('c: ' + c);

//debug logs out to GMT time (internal SalesForce Time)
//invoking .format() will show time in user's time zone
DateTime d = DateTime.newInstance(2020, 5, 1, 10, 30, 0);
System.debug(d);
System.debug(d.format())