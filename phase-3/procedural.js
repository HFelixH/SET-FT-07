let a = 0;

if (a === 0) {
    console.log('neither odd or even')
} else if (a % 2 === 0) {
    console.log('even')
} else {
    console.log('odd')
}

switch (a % 2) {
    case 0:
        console.log('even')
    default:
        console.log('odd')
}
