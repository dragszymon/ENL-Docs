# Removing elements from Array:

```javascript
    let array = [1,2,3,4,5,6]
```

#### 1.1. Remove the first element from array

```javascript
    let removed = arr.shift()
    // arr = [2,3,4,5,6]
    // removed = 1
```

#### 1.2 Remove the last element from array

```javascript
    let removed = arr.pop() 
    // arr = [1,2,3,4,5]
    // removed = 6
```


### 2. Remove element by index
splice(index, numberOfElements)

```javascript 
    let removed = arr.splice(2, 1)
    // arr = [1,2,4,5,6]
    // removed = 3
```

```javascript
    let removed = arr.splice(1, 3)
    // arr = [1,5,6]
    // removed = [2,3,4]
```


### 3. Remove element by value
Lets say we want to remove all elements from array which value is equal to 2.

```javascript
    for(let i = 0; i<arr.length; i++){
        let element = arr[i]

        if(element == 2){
            arr.splice(i, 1)
        }
    }
```

```javascript
    arr = arr.filter( element => element != 2 )
```



