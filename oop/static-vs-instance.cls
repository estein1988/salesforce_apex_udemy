//STATIC VARIABLES AND METHODS
//think of static as global variables or global methods
//static is part of the class, not the object
//accessed through the class name, not the object name

//use instance methods more often than not;
//static methods are useful when using triggers;
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////

public class MyTasks {
    private Integer tasksCompleted = 0; //instance variable - every instance of the class has its own copy
    private static Integer totalTasksCompleted = 0; //static variable - one copy that every instance shares

    public void doTask() {
        tasksCompleted++;
        totalTasksCompleted++;
    }

    public Intger getTasksCompleted() { //instance method -
        return tasksCompleted;
    }

    public static Integer getTotalTasksCompleted(){ //static method
        return totalTasksCompleted;
    }
}

MyTasks t = new MyTasks(); //static
t.doTask() //instance
System.debug('Tasks completed by t:' + t.getTasksCompleted()); //instance methods called by Object name
System.debug('Total tasks completed: ' + MyTasks.getTotalTasksCompleted()); //static methods called class name
//debug lines log 1 task completed due to t1.doTask

MyTasks t2 = new MyTasks(); //INITIALIZED TO ZERO, THEN INCREMENTS BY 1 SINCE ITS APART OF THE CLASS AND NOT THE OBJECT
t2.doTask(); //INCREMENTS FROM 1 TO 2 SINCE IT'S APART OF THE OBJECT (PREVIOUSLY INCREMENTED BY 1)
System.debug('Tasks completed by t2:' + t2.getTasksCompleted()); //LOGS 1
System.debug('Total tasks completed: ' + MyTasks.getTotalTasksCompleted()); //LOGS 2