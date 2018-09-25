# Inheritance


<div class="language-kotlin" theme="idea">

```kotlin
open class Dog {                // 1
    open fun sayHello() {       // 2
        println("wow wow!")
    }
}

class Yorkshire : Dog() {       // 3
    override fun sayHello() {   // 4
        println("wif wif!")
    }
}

fun main() {
    val dog: Dog = Yorkshire()
    dog.sayHello()
}
```

</div>

1. Kotlin classes are _final_ by default. If you want to allow overriding a
    class, it must be marked with the `open` modifier.
2. Kotlin methods are also _final_ by default. As with the classes, the `open`
    modifier allows overriding them.
3. A class is overriding by following the subclass name with
    `: SuperclassName()`. The empty parentheses `()` indicate an invocation to
    the default constructor of the superclass.
4. Overriding methods or attributes requires the `override` modifier.

### Inheriting without default constructor

<div class="language-kotlin" theme="idea">

```kotlin
//sampleStart
open class Tiger(val origin: String) {
    fun sayHello() {
        println("A tiger from $origin says: grrhhh!")
    }
}

class SiberianTiger : Tiger("Siberia")                  // 1

fun main() {
    val tiger: Tiger = SiberianTiger()
    tiger.sayHello()
}
//sampleEnd
```

</div>

1. When the superclass does not provide a default constructor, arguments must be
    provided when invoking the superclass constructor from the subclass.


### Bypass constructor arguments

<div class="language-kotlin" theme="idea">

```kotlin
//sampleStart
open class Lion(val name: String, val origin: String) {
    fun sayHello() {
        println("$name, the lion from $origin says: graoh!")
    }
}

class Asiatic(name: String) : Lion(name = name, origin = "India") // 1

fun main() {
    val lion: Lion = Asiatic("Rufo")
    lion.sayHello()
}
//sampleEnd
```

</div>


1. Observe that `name` is neither a `var` nor `val` because it is a
    constructor argument for `Asiatic`, whose value is passed to the `name`
    attribute of `Lion` (it does not override it).

