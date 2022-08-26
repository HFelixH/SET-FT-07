import React, { useEffect } from 'react';

function IncompleteBanner(props) {
    useEffect(() => {
        // action
        console.log('Effect Called from Incomplete Banner');

        // cleanup
        return () => {
            console.log('Great work! I can go night night now!');
        }
    }, [props.tasks])

    return <h4>You've got stuff to do</h4>
}

export default IncompleteBanner;


// props.tasks change -> action -> props.tasks changes -> cleanup -> action .... -> cleanup