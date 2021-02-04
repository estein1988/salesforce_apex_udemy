//If/Else
Integer x = 10;
if(x < 10) {
    System.debug('x is less than 10');
} else if (x > 10) {
    System.debug('x is greater than 10');
} else {
    System.debug('x is 10');
}

//scope & closure:
{
    Integer x = 10;
}

System.debug(x) //error tossed, outside the variable's scope

//Switch
Integer x = 1;

switch on x {
    when 1 {
        System.debug('x is 1');
    }
    when 2 {
        System.debug('x is 2');
    }
    when 3, 4, 5 {
        System.debug('x is 3, 4 or 5');
    }
    when null {
        System.debug('x is null')
    }
    when else {
        System.debug('x is not 1, 2, 3, 4 or 5');
    }
}