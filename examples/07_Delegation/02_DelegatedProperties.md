# Delegated Properties

There's some new syntax: you can say `val 'property name': 'Type' by 'expression'`.
The expression after `by` is the delegate, because `get()` and `set()` methods
corresponding to the property will be delegated to it.
Property delegates don't have to implement any interface, but they have
to provide methods named `getValue()` and `setValue()` to be called. The full documentation is [here](http://kotlinlang.org/docs/reference/delegated-properties.html). 

Let's try some code.

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
import kotlin.reflect.KProperty

class Example {
    var p: String by Delegate()                                               // 1

    override fun toString() = "Example Class"
}

class Delegate() {
    operator fun getValue(thisRef: Any?, prop: KProperty<*>): String {        // 2     
        return "$thisRef, thank you for delegating '${prop.name}' to me!"
    }

    operator fun setValue(thisRef: Any?, prop: KProperty<*>, value: String) { // 2
        println("$value has been assigned to ${prop.name} in $thisRef")
    }
}

fun main() {
    val e = Example()
    println(e.p)
    e.p = "NEW"
}
```

</div>

1. Delegated property `p` of type `String`
2. Delegation methods. For immutable property only `getValue` is required.

### Standard delegates 

Kotlin standard library contains bunch of useful delegates, like `lazy`, `observable`, etc.

For example `lazy` is used in case lazy initialization.

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
class LazySample {
    init {
      println("created!");            // 1
    }
    
    val lazy: String by lazy {
        println("computed!")          // 2
        "my lazy"
    }
}

fun main() {
    val sample = LazySample()         // 1
    println("lazy = ${sample.lazy}")  // 2
    println("lazy = ${sample.lazy}")  // 3
}
```

</div>

 1. Property `lazy` is not initialized on object creation.
 2. The first call to `get()` executes the lambda expression passed to lazy() as an argument and remembers the result
 3. Subsequent calls to `get()` simply return the remembered result.

If you want thread safety, use blockingLazy() instead: it guarantees that the values will be computed only in one thread, and that all threads will see the same value.

### Properties in map

Properties stored in a map. This comes up a lot in applications like parsing JSON
or doing other "dynamic" stuff.

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
class User(val map: Map<String, Any?>) {
    val name: String by map                // 1
    val age: Int     by map                // 1
}

fun main() {
    val user = User(mapOf(
            "name" to "John Doe",
            "age"  to 25
    ))

    println("name = ${user.name}, age = ${user.age}")
}
```

</div>

1. Delegates take values from the `map` (by the string keys - names of properties).

Of course, you can have mutable property as well, that will modify the map upon assignment (note that you'd need `MutableMap` instead of read-only `Map`).
