import React, { useRef, useEffect } from "react";
import { BrowserRouter, Routes, Route, Link } from 'react-router-dom';
import UserProfile from "./UserProfile";
import users from "./users";
import Blog from './Blog'
import About from './About'

function App() {

    const startTime = useRef(null);
    const endTime = useRef(null)

    useEffect(() => {
        startTime.current = Date.now()
        return () => {
            endTime.current = Date.now();
            console.log(window.location.href, endTime.current - startTime.current);
        }
    }, [])

    return (
        <BrowserRouter>
            <ul>
                {
                    users.map(user => {
                        return <li key={user.id}><Link to={`/users/${user.id}`} state={{ user }}>{user.name}</Link></li>
                    })
                }
                <li><Link to={`/blog`}>Blog</Link></li>
                <li><Link to={`/about`}>About</Link></li>
            </ul>
            <Routes>
                <Route path="/" element={<div>This is the home page</div>} />
                <Route path="/users/:id" element={<UserProfile />} />
                <Route path="/blog" element={<Blog />} />
                <Route path="/about" element={<About />} />
            </Routes>

        </BrowserRouter>
    );
}

export default App;

// / which will show the <home /> component containing a list of users
// /:user-id/details  which will show the <User /> component containing the user's info
