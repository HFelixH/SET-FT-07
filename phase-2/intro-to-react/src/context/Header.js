import React, { useContext } from "react";
import { UserContext } from "./UserContext";

function Header(props) {
  const user = useContext(UserContext);

  console.log('User is', user)

  return (
    <header>
      <h1>React Context</h1>
      <div>{user ? JSON.stringify(user) : 'Try logging in first'}</div>
    </header>
  );
}

export default Header;