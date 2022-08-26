import React, { useEffect } from "react";

function TaskItem({ name, handleClick, done }) {
    
    useEffect(() => {
        // this is here just to show the re-render capability of react-testing library
        done && handleClick()
    }, [done])

    const markAsDone = () => {
        handleClick()
    }

    return <li onClick={markAsDone}>{name} {done && ' Task complete'}</li>
}

// class TaskItem extends React.Component {
//     constructor(props) {
//         super(props);
//         this.markAsDone.bind(this);
//     }

//     markAsDone() {
//         this.props.handleClick()
//     }

//     render() {
//         return <li onClick={this.markAsDone}>{this.props.name} {this.props.done && ' Task complete'}</li>
//     }
// }

export default TaskItem;

