//For loop
for(Integer i = 1; i <= 5; i++){
    System.debug(i);
}

//While loop
Integer j = 1;
while(i <= 5) {
    System.debug(i);
    i++;
}

//Do-while - executes at least once even if boolean is false
Integer  i = 1;
do {
    System.debug(i);
    i++
} while (i <= 5);


///
for(Integer i = 1; i <= 5; i++){
    switch on i {
        when 1 {
            System.debug('one');    
        }
        when 2 {
            System.debug('two');    
        }
        when 3 {
            System.debug('three');    
        }
        when 4 {
            System.debug('four');    
        }
        when 5 {
            System.debug('five');    
        }
    }
}