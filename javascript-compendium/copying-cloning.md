# Copying of Primitive Types & Cloning of Reference Types in JavaScript:

### Getting Started
In the code below you can find out that copying of primitive types can be execute only by value, but you can't use the same way to copy Reference type such as Arrays or Objects. Copying of Reference Types called 'Cloning', can be execute by recreating an objects (.map, .forEach, etc.) and JSON Stringify – Parse.

| Primitive Types| Reference Types | 
| :------------- | :------------- | 
| null                        | Array    |  
| Boolean – true or false     | Object   |
| String – „text” or ‘text’   | Function |    
| undefined                   |
| Number                      |

### 1. Description of cloning methods

#### 1.1. .map()
map calls a provided callback function once for each element in an array, in order, and constructs a new array from the results. callback is invoked only for indexes of the array which have assigned values, including undefined. It is not called for missing elements of the array (that is, indexes that have never been set, which have been deleted or which have never been assigned a value).

#### 1.2. .forEach()
method executes a provided function once for each array element.

#### 1.3. .JSON.stringify()
method converts a JavaScript object or value to a JSON string, optionally replacing values if a replacer function is specified or optionally including only the specified properties if a replacer array is specified.

#### 1.4. .JSON.parse()
method parses a JSON string, constructing the JavaScript value or object described by the string. An optional reviver function can be provided to perform a transformation on the resulting object before it is returned.

### 2. Code examples 

#### 2.1. Prymitive Types

```javascript
    let alfa = 3 
    let delta = alfa

    console.log(delta)

    let epsilon = alfa * 3   // Console: 9
    let eta = alfa * 10   // Console: 30

    console.log(epsilon + ' oraz ' + eta)
```
#### 2.2. Reference Types

```javascript
    let example1 = ['Martin',3,4,5,10,true]

    let example2 = example1 
        .map((element) => {
            return element * 2;
        }) 
        .filter(element => {
            return element > 5
        });

    example2.push(11, 13, 18);

    example[0] = 1;
    example1.pop();

    let example3 = JSON.parse(JSON.stringify(example2));

    example3.push('Mamy to')

    console.log(example1);      // [1, 3, 4, 5, 10]
    console.log(example2);      // [6, 8, 10, 20, 11, 13, 18]
    console.log(example3);      // [6, 8, 10, 20, 11, 13, 18, "Mamy to"]
```