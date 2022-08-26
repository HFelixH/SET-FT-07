import React from "react";
import Header from "./Header";
// import the provider
import { UserProvider } from "./UserContext";

function App() {
  return (
    <main>
      {/* wrap components that need access to context data in the provider*/}
      <UserProvider>
        <Header />
      </UserProvider>
    </main>
  );
}

export default App;