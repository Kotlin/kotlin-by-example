#Loops

Kotlin supports all the commonly used loops: `for`, `while`, `do-while`

### `for`

`for` in Kotlin works the same way as in most languages.

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

1. Looping through each cake in the list.

### `while` and `do-while`

`while` and `do-while` constructs work similarly to most languages as well.

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

1. Executing the block while the condition is true.
2. Executing the block first and then checking the condition.

### Iterators

You can define own iterators in your classes by implementing the `iterator` operator in them.

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

1. Defining an iterator in a class. It must be named `iterator` and have the `operator` modifier.
2. Returning the iterator that meets the following method requirements:
  * `next()`: `Animal`
  * `hasNext()`: `Boolean`
3. Looping through animals in the zoo with the user-defined iterator.

The iterator can be declared in the type or as an extension function.
