import { useEffect, useRef } from "react";
import useDwellTime from "./useDwellTime";

function AboutPage(props) {
    const dwellTime = useDwellTime();

   useEffect(() => {
    console.log(window.location.pathname, dwellTime)
   }, [dwellTime])

    return <>
        <h2>This is the about page</h2>
        <div>Lorem ipsum ....</div>
    </>
}

export default AboutPage;