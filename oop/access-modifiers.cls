//file -> new Apex class
//public methods and classes are viewable in the anyounomous window
public class MyClass {
    private string firstName;

    public void sayHello() {
        System.debug('hello ' + firstName);
    }

    public void setFirstName(String name){
        firstName = name;
    }
}

MyClass c = new MyClass();
c.firstName = 'Elliott'; //variable not visible due to it being private
c.setFirstName('Luke') //executes because it's a public method
c.sayHello()