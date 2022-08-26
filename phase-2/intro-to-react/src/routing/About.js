import { useLocation } from "react-router";

function AboutPage(params) {
    const location = useLocation();

    return <>
        <h2>This is the about page</h2>
        <div>Lorem ipsum ....</div>
    </>
}

export default AboutPage;