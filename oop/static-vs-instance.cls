//use instance methods more often than not;
//static methods are useful when using triggers;

public class MyTasks {
    private Integer tasksCompleted = 0; //instance variable
    private static Integer totalTasksCompleted = 0; //static variable

    public void doTask() {
        tasksCompleted++;
        totalTasksCompleted++;
    }

    public Intger getTasksCompleted() { //instance method
        return tasksCompleted;
    }

    public static Integer getTotalTasksCompleted(){ //static method
        return totalTasksCompleted;
    }
}

MyTasks t = new MyTasks();
t1.doTask()
System.debug t.getTasksCompleted('Tasks completed by t1:' + t1.getTasksCompleted()); //instance methods called by Object name
System.debug('Total tasks completed: ' + MyTasks.getTotalTasksCompleted()); //static methods called class name
//debug lines log 1 task completed due to t1.doTask

MyTasks t2 = new MyTasks();
t2.doTask();
System.debug t.getTasksCompleted('Tasks completed by t2:' + t2.getTasksCompleted());
System.debug('Total tasks completed: ' + MyTasks.getTotalTasksCompleted());