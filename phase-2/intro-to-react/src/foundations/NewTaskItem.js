import { useState, useEffect } from "react";

function NewTaskItem(props) {
    const [task, setTask] = useState('');

    function handleEnter(event) {
        if(event.keyCode === 13) {
            if(task.trim().length === 0) return;
            props.createTask(task);
            setTask('');
        }
    }

    function handleChange(event) {
        console.log(event.target.value);
        setTask(event.target.value);
    }

    return <>
        Enter name for new task: <input type='text' value={task} onChange={handleChange} onKeyDown={handleEnter} />
    </>
}

export default NewTaskItem;