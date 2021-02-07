//Constructors
//called when an instance of a class is created; 
//initializes and object;
//not required
//no return type, not even void

class myConstructorClass {
    MyConstructorClass() {
        System.debug('executing constructor...');
        name = 'Han Solo';
    }

    MyConstructorClass(String userName){ //second constructor, requires a different signature
        System.debug('executing constructor with parameter');
        name = username;
    }

    String name;

    void sayHello() {
        System.debug('hello, ' + name)
    }
}

myClass d = new MyConstructorClass('Luke Skywalker');
d.sayHello();