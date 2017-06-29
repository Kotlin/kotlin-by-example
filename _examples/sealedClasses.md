---
title: 'Sealed Classes'
---

<div class="sample" markdown="1">

```kotlin
//sampleStart
sealed class Mammal(val name: String)                                                   // 1

class Cat(val catName: String) : Mammal(catName)
class Human(val humanName: String, val job: String) : Mammal(humanName)


fun greetMammal(mammal: Mammal): String {
    when (mammal) {                                                                     //2
        is Human -> return "Hello ${mammal.name}; You're working as a ${mammal.job}"    //3
        is Cat -> return "Hello ${mammal.name}"                                         //4
                                                                                        //5
    }
}
//sampleEnd
fun main(args: Array<String>) {
    println(greetMammal(Cat("Snowy")))
}
```

</div>


1. A sealed class is defined with two subclasses which must be in the same file
2. The sealed class is used as an argument for a *when* expression 
3. A smartcast is performed, casting Mammal to Human
4. A smartcast is performed, casting Mammal to Cat
5. The *else* clause is not necessary because all subclasses of the sealed class are covered.
This is contrary to ordinary super classes, where an *else* would always be needed.


