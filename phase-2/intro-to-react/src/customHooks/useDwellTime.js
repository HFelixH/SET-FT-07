import { useEffect, useRef, useState } from "react";

function useDwellTime() {
    const startTime = useRef(Date.now());
    const timer = useRef(Date.now());
    const [time, setTime] = useState(0);

    useEffect(() => {
        timer.current = setInterval(() => {
            setTime(Date.now() - startTime.current);
        }, 1000)

        return () => {
            clearInterval(timer.current)
        }
    })

    return time;
}

export default useDwellTime;