import React, { useState } from "react";

function Form() {
    const [person, setPerson] = useState({
        firstName: '',
        lastName: '',
        address: '',
        occupation: ''
    })

    function handleFirstName(value) {
        // do some very specific validations
        handleChange('firstName', value)
    }

    function handleChange(field, value) {
        const trimmedValue = value.trim();
        // common validations
        setPerson({...person, [field]: trimmedValue });
    }

    return (
        <form>
            <div>firstName <input type="text" onChange={(event) => handleFirstName(event.target.value)} /></div>
            <div>lastName <input type="text" onChange={(event) => handleChange('lastName', event.target.value)} /></div>
            <div>address <input type="text" onChange={(event) => handleChange('address', event.target.value)} /></div>
            <div>occupation <input type="text" onChange={(event) => handleChange('occupation', event.target.value)} /></div>
            <button type="submit">Submit</button>
        </form>
    );
}

export default Form; 
