void writeLog(String output){
    System.debug(output);
}

class myClass {
    void writeLog(String output, Integer count){ //method signature, must be unique to the class (error: method already defined)
        for(i = 0; i < count; i++){
            System.debug(output);
        }
    }
    String sayHello(string name) {
        String result = 'hello ' + name;
        return result
    }
}

myClass c = new MyClass();
c.writeLog('my paramter', 3); //output paramater
String hello = c.sayHello('Elliott');
System.debug(hello)