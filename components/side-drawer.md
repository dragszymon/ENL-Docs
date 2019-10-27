# Side Drawer

### Git test

**Bla Bla** Paweł master.

### Description
Lorem Ipsum jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. Pięć wieków później zaczął być używany przemyśle elektronicznym, pozostając praktycznie niezmienionym. 

### Usage

<!-- tabs:start -->

#### ** HTML **


```html
    <enl-side-drawer>
        <div slot="header">
            ...
        </div>
        <div slot="component">
            ...
        </div>
    </enl-side-drawer>
```

```html
    <enl-side-drawer opened>
        ...
    </enl-side-drawer>
```

#### ** CSS **

!> **Do not style the host element!** <br/> As it is aparent to a drawer and a **backdrop**.

```css
    enl-side-drawer{
        /* Do not apply styles here! */
    }
```

    
```css
    enl-side-drawer > .enl-side-drawer__drawer{
        /* Drawer closed */
        transform: translateX(-500px) /* Default */
    }
    
    enl-side-drawer[opened] > .enl-side-drawer__drawer{
        /* Drawer opened */
        transform: translateX(0px) /* Default */
    }
    
```


```css

    enl-side-drawer .header{
        /* Header */
    }

    enl-side-drawer .content{
        /* Content */
    }

```


```css

    enl-side-drawer[opened] > .enl-side-drawer__backdrop{
        /* Dark overlay behind drawer */
        opacity: 1; /* Default */
    }

```

#### ** JS **

```javascript
    let drawer = document.querySelector('enl-side-drawer')
    
    drawer.open()
    console.log(drawer.opened) // true
    
    drawer.close()
    console.log(drawer.opened) // false
```

```javascript
    drawer.addEventListner('onOpen', () => {
        ...
    })
    
    drawer.addEventListner('onClose', () => {
        ...
    })
    
    drawer.addEventListner('onToggle', boolean => {
        ...
    })
```

<!-- tabs:end -->


### API

##### Atribiutes
|  Name | Description  |  Type |  Default |
|---|---|:---:|:---:|
| **opened** |  Describes the state of the Side Drawer |  `Boolean` | `false` |

##### Methods
|  Method | Description  |  Input |  Output |
|---|---|:---:|:---:|
| **open()**  |  Opens Side Drawer |  - | `void`  |
|  **close()** |  Closes Side Drawer | -  |  `void` |

##### Events
|  Name | Description  |  Output |
|---|---|:---:|
| **onOpen**  |  Triggers when Side Drawer is opened | -  |
|  **onClose** |  Triggers when Side Drawer is closed|  - |
|  **onToggle** |  Triggers when Side Drawer state is changed |  `Boolean` |


### Development

<!-- tabs:start -->

#### ** TSX **
```typescript
import { Component, Prop, Method, Event, EventEmitter, h } from '@stencil/core';

@Component({
    tag: 'enl-side-drawer',
    styleUrl: 'style.css',
})
export class EnlSideDrawer {
    @Prop({ reflectToAttr: true, mutable: true }) opened: boolean;

    @Event({ bubbles: false, composed: true }) onOpen: EventEmitter;
    @Event({ bubbles: false, composed: true }) onClose: EventEmitter;
    @Event({ bubbles: false, composed: true }) onToggle: EventEmitter<boolean>;

    @Method() async open() {
        this._open()
    }
    @Method() async close() {
        this.close()
    }

    _open(){
        this.opened = true;
        this.onOpen.emit()
        this.onToggle.emit(true)
    }

    _close(){
        this.opened = false;
        this.onClose.emit()
        this.onToggle.emit(false)
    }

    render(){
        return [
            <div class="enl-side-drawer__drawer">
                <div class="header">
                    <slot name="header" />
                </div>
                <div class="content">
                    <slot name="content" />
                </div>
            </div>,
            <div 
                onClick={this._close.bind(this)}
                class="enl-side-drawer__backdrop">
            </div>
        ]
    }
}
```

#### ** CSS **
```css

enl-side-drawer, enl-side-drawer > *{
    position: relative;
    z-index: 0;
    box-sizing: border-box;
    padding: 0px;
    margin: 0px;
}

enl-side-drawer{
    z-index: 10;
}

enl-side-drawer .enl-side-drawer__drawer{
    position: fixed;
    top: 0px;
    left: 0px;
    width: 100vw;
    max-width: 400px;
    min-height: 100vh;
    overflow-x: hidden;
    overflow-y: scroll;
    display: grid;
    grid-template-rows: 80px auto;
    z-index: 10;
    transition: transform .25s ease-in-out;
    background-color: #fff;
    box-shadow: 0 0 20px -8px #000;
    transform: translateX(-500px)
} 

enl-side-drawer[opened] .enl-side-drawer__drawer{
    transform: translateX(0px)
}

enl-side-drawer .enl-side-drawer__backdrop{
    position: fixed;
    top: 0;
    left: 0;
    width: 100vw;
    height: 100vh;
    background-color: rgba(0,0,0,0.75);
    z-index: 9;
    opacity: 0;
    transition: opacity .2s ease-in-out;
    pointer-events: none;
}

enl-side-drawer[opened] .enl-side-drawer__backdrop{
    opacity: 1;
    pointer-events: all;
}



```

<!-- tabs:end -->
