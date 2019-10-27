# EnQuery

*Some stuff changed*

### Getting Started

```javascript
    import {$} from '../utilities/enlighten'
```

```javascript
    // '../utilities/enlighten'
    export let $ = selector => {
        return new Enlighten(selector)
    }
```
### Constructor & Basic Usage

<!-- tabs:start -->

###  **HTML**

```html
    <div>
        <button>Ok</button>
        <button>Cancle</button>
    </div>
```

### **JS - Query Selector**

```javascript
    let container = $('div')
    let buttons = $('button')
    
    console.log(container.element, container.elements)
    // (div), [(div)]
    
    console.log(buttons.element, buttons.elements)
    // (button > ok), [(button > Ok), (button > Cancle)]
```

### **JS - Objects as selector**

```javascript
let container = document.querySelector('div')
let buttons = document.querySelectorAll('button')

container = $(container)
buttons = $(buttons)


console.log(container.element, container.elements)
// (div), [(div)]

console.log(buttons.element, buttons.elements)
// (button > ok), [(button > Ok), (button > Cancle)]

```
<!-- tabs:end -->
