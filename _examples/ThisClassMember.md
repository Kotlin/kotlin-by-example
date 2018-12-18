---
title: this class member
---
    
**this** keyword, inside a class, refers to the instance. By default when used without identifiers, this refers to the current innermost scope where the class is declared.

If you want to access an outer scope, use the **this@qualifiedLabel** identifier, where *qualifiedLabel* points to the outer class.


<div class="sample" markdown="1">

```kotlin
//sampleStart

class Car {                                               //1         
    
    var serialID: String = "NOT-SET"                      //2
    get() = "S-ID:$field"
    set(value){
        field = "H1-$value"
    }    
            
    inner class Alarm{                                    //3
        var serialID: String = "NOT-SET"                  
        set(value){
            field = "${this@Car.serialID}-$value"         //4
        }
        
        fun unlock(inputKey: String){                     //5
                if (inputKey == this.serialID) {
                    println("Unlocking: success!")
                } else {
                    println("Unlocking: failed...")
                }
        }           
    }
       
}


fun main(args: Array<String>){
    val car1 = Car()

    car1.serialID = "CAR01"
    println("Car id is: ${car1.serialID}")
    
    val alarm1 = car1.Alarm()
    alarm1.serialID = "BOX01"
    
    println("Secret bundle key for that car/alarm is: ${alarm1.serialID}")
    
    alarm1.unlock("S-ID:H1-CAR01-BOX0A")
    alarm1.unlock("S-ID:H1-CAR01-BOX01")
    
}

//sampleEnd
```

1. Outer class, the container
2. Custom accessor/mutator, with demo default value, defining car's unique serial ID
3. Class Alarm, defined as "inner" so that it could access outer scope. 
4. Custom mutator, with demo default value, pointing to outer scope
5. Method inside inner scope, with access to current scope's object

</div>

    
