# List

A [list](https://kotlinlang.org/docs/reference/collections.html) is an ordered collection of items, and can be mutable or immutable. Standard library allows list creation with __listOf()__, an array list, and __mutableListOf()__, that can be rendered in a *read-only* view with the [List<T>](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.collections/-list/index.html) interface. 

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
val systemUsers: MutableList<Int> = mutableListOf(1, 2, 3)        // 1
val sudoers: List<Int> = systemUsers                              // 2

fun addSudoer(newUser: Int) {                                     // 3
    systemUsers.add(newUser)                      
}

fun getSysSudoers(): List<Int> {                                  // 4
    return sudoers
}

fun main() {
    addSudoer(4)                                                  // 5 
    println("Tot sudoers: ${getSysSudoers().size}")               // 6
    getSysSudoers().forEach{                                      // 7
        i -> println("Some useful info on user $i")
    }
    // getSysSudoers().add(5) <- Error!                           // 8
}
```

</div>


1. MutableList creation 
2. Creation of a *readonly view* of the list
3. MutableList makes available the __add()__ method
4. fun that returns the *immutable* list
5. MutableList update: related *readonly* view is edited too, because is [covariant](https://kotlinlang.org/docs/reference/generics.html#variance)
6. Consuming the size property on the *immutable* List is allowed
7. A dummy iteration, showing a typical __.forEach()__ call on a List
8. Failed attempt to *write* on an *readonly* view. __add()__ is unavailable!