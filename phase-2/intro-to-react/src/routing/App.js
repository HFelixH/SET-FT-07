import React from "react";
import { BrowserRouter, Routes, Route, NavLink, Navigate, Link } from 'react-router-dom';
import UserProfile from "./UserProfile";
import users from "./users";

function App() {
    return (
        <BrowserRouter>
            <ul>
                {
                    users.map(user => {
                        return <li key={user.id}><Link to={`/users/${user.id}`} state={{user}}>{user.name}</Link></li>
                    })
                }
            </ul>
            <Routes>
                <Route path="/" element={<div>This is the home page</div>} />
                <Route path="/users/:id" element={<UserProfile />} />
            </Routes>

        </BrowserRouter>
    );
}

export default App;

// / which will show the <home /> component containing a list of users
// /:user-id/details  which will show the <User /> component containing the user's info
