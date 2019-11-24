pragma solidity ^0.5.0;

contract TodoList {
    //make a state variable
    //state variables are written to the blockchain
    uint public taskCount = 0;

    struct Task {
        uint id;
        string content;
        bool completed;
    }
//access the storage by making a new state variable 
//mapping takes key value pair we declare the data type = unint and the task (Task)

//making it public give it a reader function
//mapping is a dynamic size you can't return the entire thing
//that is why we use taskCount 
    mapping(uint => Task) public tasks;

    constructor()public{
        createTask("Test task to check rendering");
    }

    function createTask(string memory _content) public {
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }

}
