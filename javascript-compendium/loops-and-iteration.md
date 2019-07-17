# JavaScript Loops

### Getting Started
Loops are used in programming to automate repetitive tasks. You can think of a loop as a computerized version of the game where you tell someone to take X steps in one direction then Y steps in another. There are many different kinds of loops, but they all essentially do the same thing: they repeat an action some number of times (and it's actually possible that number could be zero). The various loop mechanisms offer different ways to determine the start and end points of the loop. There are various situations that are more easily served by one type of loop over the others.

| Different Types of Loops|       | 
| :------------- | :------------- | 
| for                         | for...in             |  
| forEach                     | for...of             |
| do...while                  | for...in vs for...of |    
| while                       |

### 1. Description of looping tools

#### 1.1. for() 
The for statement creates a loop that consists of three optional expressions. The first is the initializer (let i = 1) which initializes the loop and is executed only once at the start. The second is a test condition (i <= 50). When a conditional expression evaluates to true, the body of the loop is executed. When false, the loop terminates. The third part is an updater (i++) which is invoked after each iteration. The updater typically increments or decrements the loop counter.

In a for-loop, all three parts i.e. initializer, test condition, and updater are written together in a single line (called an iteration statement), whereas in a while, they're scattered and lie at different places. This makes a for-loop more readable than a while-loop and as a result, more easily maintainable.

So when do we use for and when while? If the number of iterations is known use the for-loop. If you want to loop until a certain condition is met use the while-loop.

```javascript
    let sum = 0;
    for (let i = 1; i <= 50; i++) {
        sum += i;
    }
    console.log(sum);    // => sum = 1275
```

#### 1.2. do{} ...while()
The block following do is executed first and then the condition is evaluated. If the while condition is true, the block is executed again and repeats until the condition becomes false. This is known as a post-test loop as the condition is evaluated after the block has executed.

The do-while loop is executed at least once whereas the while loop may not execute at all. The do-while is typically used in a situation where the body of a loop contains a statement that generates a value that you want to use in your conditional expression.

```javascript
    let sum = 0;
    let number = 1;
    do {
    sum += number;            // -- body
    number++;                 // -- updater
    } while (number <= 50);   // -- condition

    console.log(sum);         // => sum = 1275
```

#### 1.3. while()
The condition is first evaluated. If true, the block of statements following the while statement is executed. This is repeated until the condition becomes false. This is known as a pre-test loop because the condition is evaluated before the block is executed.

The number++ statement is called the updater. Removing it will result in an infinite loop. You must always include a statement in a loop that guarantees the termination of the loop or else you'll run into this problem.

```javascript
    let sum = 0;
    let number = 1;
    while (number <= 50) {  // -- condition
    sum += number;        // -- body
    number++;             // -- updater
    }

    console.log(sum);         // => sum = 1275
```

#### 1.4. for()...in
A for-in loop iterates through the properties of an object and executes the loop's body once for each enumerable property of the object. Here is an example:

```javascript
    let student = { name:"Bill", age: 25, degree: "Masters" };
    for (let item in student) {
    console.log(student[item]);     // => "Bill", then 25, then "Masters"
    }
```

With each iteration JavaScript assigns the name of the property (a string value) to the variable item. In the example above these are: name, age, and degree.

Note that for-in loops also return properties and methods that are inherited through the prototype chain. An easy way to skip properties and functions that are not part of the object itself use the built-in hasOwnProperty method.

```javascript
    let Student = function(name) {
        this.name = name;
    }
    Student.prototype.age = 38;
    let student = new Student("Carl");
    for (let item in student) {
        if (student.hasOwnProperty(item)) {
            console.log(student[item]);        // => Carl. age is not displayed
        }
    }
```

#### 1.5. for()...of[]
ES6 introduces a new for-of loop which allows us to iterate over arrays or other iterable objects (e.g. strings) very easily. Also, the code inside the loop is executed for each element of the iterable object.

The following example will show you how to loop through arrays and strings using this loop.

```javascript
    // Iterating over array
    let letters = ["a", "b", "c", "d", "e", "f"];

    for(let letter of letters) {
        console.log(letter); // a,b,c,d,e,f
    }

    // Iterating over string
    let greet = "Hello World!";

    for(let character of greet) {
        console.log(character); // H,e,l,l,o, ,W,o,r,l,d,!
}
```

#### 1.6. for()...in vs for()...of

Traditional for loops are so last year! for..of and for…in loops give us a very clean and concise syntax to iterate over all kinds of iterables and enumerables like strings, arrays and object literals. If you’re anything like me though, you always forget which one to use. It is for…in or for…of?

##### 1.6.1 Use for…of to iterate over the values in an iterable, like an array:

```javascript
    let animals = ['🐔', '🐷', '🐑', '🐇'];
    let names = ['Gertrude', 'Henry', 'Melvin', 'Billy Bob'];

    for (let animal of animals) {
    // Random name for our animal
    let nameIdx = Math.floor(Math.random() * names.length);

    console.log(`${names[nameIdx]} the ${animal}`);
    }

    // Henry the 🐔
    // Melvin the 🐷
    // Henry the 🐑
    // Billy Bob the 🐇
```

##### 1.6.2 Use for…in to iterate over the properties of an object (the object keys):

```javascript
    let oldCar = {
    make: 'Toyota',
    model: 'Tercel',
    year: '1996'
    };

    for (let key in oldCar) {
    console.log(`${key} --> ${oldCar[key]}`);
    }

    // make --> Toyota
    // model --> Tercel
```

##### 1.6.3 The difference between for...in and for...of is:

+ for...of iterates over the property values
+ for...in iterates the property names