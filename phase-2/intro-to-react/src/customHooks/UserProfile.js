import { useEffect, useState, useRef } from "react";
import { useLocation, useParams } from "react-router";
import { useSearchParams } from "react-router-dom";
import useDwellTime from "./useDwellTime";
import users from "./users";

function UserProfile(props) {

    const location = useLocation();
    // const {user} = location.state;
    const { id } = useParams();
    const [user, setUser] = useState({});

    const [queryParams] = useSearchParams();
    const isNewUser = Boolean(Number(queryParams.get('isNewUser')))
    
    useEffect(() => {
        setUser(users.find(u => u.id === Number(id)) || {});
    }, [id])

    return <>
        <h2>Name: {user.name}</h2>
        <div>Email: {user.email}</div>
        <div>Points: {user.points}</div>
        <div>NewUser: {isNewUser ? 'yes' : 'nope'}</div>
    </>
}

export default UserProfile;