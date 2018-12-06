# Data Classes

[Data classes](https://kotlinlang.org/docs/reference/data-classes.html) make it easy to create classes that are used to store some values. Such classes are automatically provided with methods for copying, getting a string representation, and using instances in collections.

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
data class User(val name: String, val id: Int)            // 1

fun main() {
    val user = User("Alex", 1)
    println(user)                                          // 2

    val secondUser = User("Alex", 1)
    val thirdUser = User("Max", 2)

    println("user == secondUser: ${user == secondUser}")   // 3
    println("user == thirdUser: ${user == thirdUser}")

    println(user.hashCode())                               // 4
    println(thirdUser.hashCode())

    // copy() function
    println(user.copy())                                   // 5
    println(user.copy("Max"))                              // 6
    println(user.copy(id = 2))                             // 7
    
    println("name = ${user.component1()}")                 // 8
    println("id = ${user.component2()}")
}
```

</div>

1. Defining a data class with the `data` modifier. 
2. Method `toString` is auto-generated, which makes `println` output look nice.
3. Auto-generated `equals` considers two instances equal if all their properties are equal.
4. Equal data class instances have equal `hashCode()`.
5. Auto-generated `copy` function makes it easy to create a new instance.
6. When copying, you can change values of certain properties. `copy` accepts areguments in the same order as the class constructor.
7. Use `copy` with named arguments to change the value despite of the properties order.
8. Auto-generated `componentN` functions let you get the values of properties in the order of declaration.
