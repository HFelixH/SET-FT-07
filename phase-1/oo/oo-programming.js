
// const cat = {
//     name: 'Garfield',
//     legs: 4,
//     makesSound() {
//         console.log('Meow!')
//     }
// }

// cat.makesSound()

// const parrot = {
//     name: 'Polly',
//     legs: 2,
//     makesSound() {
//         console.log('Sqawk!')
//     }
// }


function AnimalFn(name, legs, sound) {
    return {
        name,
        legs,
        sound,
        makesSound() {
            console.log(this.sound);
        }
    }
}

class Animal {
    constructor(name, legs, sound) {
        this.name = name;
        this.legs = legs;
        this.sound = sound;
    }

    makesSound() {
        console.log(this.sound);
    }
}

const dog = new AnimalFn('doggo', 4, 'Bark!')

// dog.makesSound();

const classyDog = new Animal('Sir Doggo', 4, 'Woof!')
const cat = new Animal('Bob', 4, 'Meow!')
const parrot = new Animal('Polly', 2, 'Sqawk!')

// classyDog.makesSound();
// cat.makesSound();
// parrot.makesSound();


module.exports = {
    dog
}

class Person {
    constructor(firstname, lastname) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.legs = 2;
    }

    getFullname() {
        return `${this.firstname} ${this.lastname}`
    }

    setOccupation(occupation) {
        this.occupation = occupation
    }

    setLegs(count) {
        if(count < 0 || isNaN(count)) throw Error('Wuut!') 
        this.legCount = count 
    };

    walk() {
        return `${this.firstname} is a person and he uses his ${this.legCount} legs to walk!`
    }
}

const john = new Person('John', 'Doe')
const bob = new Person('Bob', 'Alice')

console.log(bob.getFullname())
console.log(john.getFullname())

bob.setLegs(-6);

console.log(bob.walk())

bob.lastname = 'single';
console.log(bob.getFullname());
// Grows up 

bob.setOccupation('Academy xi instructor')



