---
title: this in extension functions
---
    
<div class="sample" markdown="1">

Normally, when you create a class, by default it inherits from *Any*, the Kotlin default supertype which declares toString(), hashCode() and equals().
In other languages like Java, if you want to extend a class behaviour, you create a *derived* class like this:

```kotlin
open class Human {                     //1
    init {
        println("cogito, ergo sum!")   //2
    }
}

class Developer: Human()               //3

fun main(args: Array<String>){
    val person = Developer()           //4 
}

```

1. Class that allows to be inheritable. Note: Any is inherted by default
2. Initializer block, with some code
3. Derived class definition
4. Instance creation, with inherited behaviour  
  
But in Kotlin, with **extension functions** you have another way to extend class functionalities: just declare a new *fun* on the base class, no need to define another (derived) class and generate its instance.

In this example, you can see how it's easy to declare an extension and, with keyword **this**, access the object, called *receiver*:

```kotlin
fun MutableMap<String, Int>.filterGoldenBallWon(rate: Int){    //1 
    for ((k,v) in this){                                       //2 
        if (v >= rate){
            println("$k won ${this[k]} golden balls")          //3
        }
    }
}

fun main(args: Array<String>){
    val mapOfFame = mutableMapOf("Cristiano Ronaldo" to 5,     //4
                                 "Lionel Messi" to 4, 
                                 "Alberto de Prezzo" to 0, 
                                 "Roberto Baggio" to 1)
    
    mapOfFame.filterGoldenBallWon(2)                           //5
}


```


</div>

1. extension of MutableMap (modifiable collection). Adding a custom filter print method, based on value 
2. **this** is the receiver object: the Map object    
3. **this**, being a MutableMap object, is used with Map[key] syntax
4. Map's instance 
5. extension function call