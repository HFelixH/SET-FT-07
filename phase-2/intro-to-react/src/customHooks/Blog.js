import { useEffect } from "react";
import useDwellTime from "./useDwellTime";

function BlogPage(props) {
   const dwellTime = useDwellTime();

   useEffect(() => {
    console.log(window.location.pathname, dwellTime)
   }, [dwellTime])

    return <div style={{ backgroundColor: 'cement' }}>
        <h2>This is the Blog page</h2>
        <div>Lorem ipsum ....</div>
    </div>
}

export default BlogPage;