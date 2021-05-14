# Data Classes

[Data classes](https://kotlinlang.org/docs/reference/data-classes.html) make it easy to create classes that are used to store values. Such classes are automatically provided with methods for copying, getting a string representation, and using instances in collections. You can override these methods with your own implementations in the class declaration.

```run-kotlin
data class User(val name: String, val id: Int) {           // 1
    override fun equals(other: Any?) =
        other is User && other.id == this.id               // 2
}
fun main() {
    val user = User("Alex", 1)
    println(user)                                          // 3

    val secondUser = User("Alex", 1)
    val thirdUser = User("Max", 2)

    println("user == secondUser: ${user == secondUser}")   // 4
    println("user == thirdUser: ${user == thirdUser}")

    // hashCode() function
    println(user.hashCode())                               // 5
    println(secondUser.hashCode())
    println(thirdUser.hashCode())

    // copy() function
    println(user.copy())                                   // 6
    println(user === user.copy())                          // 7
    println(user.copy("Max"))                              // 8
    println(user.copy(id = 3))                             // 9

    println("name = ${user.component1()}")                 // 10
    println("id = ${user.component2()}")
}
```

1. Defines a data class with the `data` modifier.
2. Override the default `equals` method by declaring users equal if they have the same `id`.
3. Method `toString` is auto-generated, which makes `println` output look nice.
4. Our custom `equals` considers two instances equal if their `id`s are equal.
5. Data class instances with exactly matching attributes have the same `hashCode`.
6. Auto-generated `copy` function makes it easy to create a new instance.
7. `copy` creates a new instance, so the object and its copy have distinct references.
8. When copying, you can change values of certain properties. `copy` accepts arguments in the same order as the class constructor.
9. Use `copy` with named arguments to change the value despite of the properties order.
10. Auto-generated `componentN` functions let you get the values of properties in the order of declaration.
