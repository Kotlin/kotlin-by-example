# Delegated Properties

Kotlin provides a mechanism of [delegated properties](http://kotlinlang.org/docs/reference/delegated-properties.html) that allows delegating the calls of the property `set` and `get` methods to a certain object.
The delegate object in this case should have the method `getValue`. For mutable properties, you'll also need `setValue`.

```run-kotlin
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

1. Delegates property `p` of type `String` to the instance of class `Delegate`. The delegate object is defined after the `by` keyword.
2. Delegation methods. The signatures of these methods are always as shown in the example. Implementations may contain any steps you need. For immutable properties only `getValue` is required.

### Standard Delegates 

The Kotlin standard library contains a bunch of useful delegates, like `lazy`, `observable`, and others. You may use them as is.
For example `lazy`is used for lazy initialization.

```run-kotlin
class LazySample {
    init {
      println("created!")            // 1
    }
    
    val lazyStr: String by lazy {
        println("computed!")          // 2
        "my lazy"
    }
}

fun main() {
    val sample = LazySample()         // 1
    println("lazyStr = ${sample.lazyStr}")  // 2
    println(" = ${sample.lazyStr}")  // 3
}
```

 1. Property `lazy` is not initialized on object creation.
 2. The first call to `get()` executes the lambda expression passed to `lazy()` as an argument and saves the result.
 3. Further calls to `get()` return the saved result.

 If you want thread safety, use `blockingLazy()` instead: it guarantees that the values will be computed only in one thread and that all threads will see the same value.

### Storing Properties in a Map

Property delegation can be used for storing properties in a map. This is handy for tasks like parsing JSON
or doing other "dynamic" stuff.

```run-kotlin
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

1. Delegates take values from the `map` by the string keys - names of properties.

You can delegate mutable properties to a map as well. In this case, the map will be modified upon property assignments. Note that you will need `MutableMap` instead of read-only `Map`.
