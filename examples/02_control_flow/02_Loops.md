#Loops

### for, while, do-while

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
fun main(args: Array<String>) {
//sampleStart
    val cakes = listOf("carrot", "cheese", "chocolate")
    
    for (cake in cakes) {                               // 1
        println("Yummy, it's a $cake cake!")
    }

//sampleEnd
}
```

</div>

1. Loops through each cake in the list

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
fun eatACake() = println("Eat a Cake")
fun bakeACake() = println("Bake a Cake")

fun main(args: Array<String>) {
    var cakesEaten = 0
    var cakesBaked = 0
    
    while (cakesEaten < 5) {                    // 1
        eatACake()
        cakesEaten ++
    }
    
    do {                                        // 2
        bakeACake()
        cakesBaked++
    } while (cakesBaked < cakesEaten)

}
```

</div>

While and do-while constructs work similarly to most languages.

1. Performs the block while the condition is true.
2. Performs the block first, and then loops while evaluating the while condition.

### Iterators

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
class Animal(val name: String)

class Zoo(val animals: List<Animal>) {

    operator fun iterator(): Iterator<Animal> {             // 1
        return animals.iterator()                           // 2
    }
}

fun main() {

    val zoo = Zoo(listOf(Animal("zebra"), Animal("lion")))

    for (animal in zoo) {                                   // 3
        println("Watch out, it's a ${animal.name}")
    }

}
```

</div>

1. Providing an iterator implementation (marked with operator modifier).
2. Returns the iterator for the list, which meets the method requirements
    1. next(): Animal
    2. hasNext(): Boolean
3. Loops through each animal in the zoo

The iterator can be declared on the type or as an extension function.
