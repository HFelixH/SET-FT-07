/*
    Different functions: getter, setter, static 
    How to achieve inheritance in JS, super()
    SOLID 
 */



class Chocolate {
    constructor(color, sweetness, shape) {
        this.color = color;
        this.sweetness = sweetness;
        this.shape = shape;
    }

    melt() {
        console.log('I am melting, Yum!')
        this.shape = 'random';
    }

    whatIsMyAncestory() {
        console.log(Chocolate.name)
    }
}

class CreationsChocolate extends Chocolate {
    constructor(fillings) {
        super('green', 8, 'block');
        this.fillings = fillings;
    }
}

class Toblerone extends Chocolate {
    constructor(color) {
        super(color, 8, 'triangle');
        this.fillings = 'nuts';
    }

    melt() {
        console.log('Toblerone level melt!');
    }

    break() {
        console.log('Pop! more chocolate')
    }

    whatIsMyAncestory() {
        super.whatIsMyAncestory();
        console.log(Toblerone.name)
    }
}

class TobleroneWhiteChocolate extends Toblerone {
    constructor() {
        super('white');
    }
}

class TobleroneMilkChocolate extends Toblerone {
    constructor() {
        super('brown');
        this.flavor = 'milky'
    }

    whatIsMyAncestory() {
        super.whatIsMyAncestory();
        console.log(TobleroneMilkChocolate.name)
    }
}

const tobleroneWhiteChocolate = new TobleroneWhiteChocolate()
const tobleroneBrownChocolate = new TobleroneMilkChocolate()

// console.log(tobleroneWhiteChocolate);

// tobleroneBrownChocolate.melt()
// tobleroneBrownChocolate.break()

// tobleroneBrownChocolate.whatIsMyAncestory();

for (const key in tobleroneBrownChocolate) {
    let message = ''
    if (!Object.hasOwnProperty.call(tobleroneBrownChocolate, key)) {
        message += 'Inherited property: '
    }
    console.log(message + key);
}

tobleroneBrownChocolate.toString();



/**
 *  S - Single responsibility 
 *  O - Open for extension, closed for modification
 *  L - Liskov's substituion principle
 *  I - Interface seggregation
 *  D - Dependency Inversion
 */

const matureAudienceRating = ['A', 'B', 'C', 'D', 'E', 'F'];

class User {
    constructor(name, age) {
        this._age = age;
        this.name = name;
    }
}

class Book {
    constructor(name, rating) {
        this._rating = rating;
        this.name = name;
    }

}

class Librarian {
    isAllowedForUser(bookRating, userAge) {
        if (userAge < 12 && matureAudienceRating.includes(bookRating)) return false;
        return true;
    }
}


class Rectangle {
    constructor(length, width) {
        this.length = length;
        this.width = width;
    }

    area() {
        return this.length * this.width;
    }
}

class Square extends Rectangle {
    constructor(length, width) {
        super(length, width)
    }
}


const rectangle = new Square(3, 4);
console.log('Rectangle Area is: ' + rectangle.area())

const square = new Square(3, 3);
console.log('Square Area is: ' + square.area())


// counter = 1
// async function postData(url, data) {
//     const res = await axios.post(url, data)
//     count += 1;
//     return res.data;
// }


// async function _postData(url, data) {
//     const res = await fetch(url, {
//         //...
//         // body
//     })
//     return res.data;
// }

httpCounter = 0

axios(url, {
    //...
    // body
})


httpCounter+=1
fetch(url, {
    //...
    // body
})
fetch(url, {
    //...
    // body
})
fetch(url, {
    //...
    // body
})
fetch(url, {
    //...
    // body
})
fetch(url, {
    //...
    // body
})
fetch(url, {
    //...
    // body
})
