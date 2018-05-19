---
title: Delegation Pattern
---

<div class="sample" markdown="1">

```kotlin
interface SoundBehaviour {                                                          // 1
    fun makeSound()
}

class ScreamBehavior(val n:String): SoundBehaviour {                                // 2
    override fun makeSound() = println("${n.toUpperCase()} !!!")
}

class RockAndRollBehavior(val n:String): SoundBehaviour {
    override fun makeSound() = println("I'm The King of Rock 'N' Roll: $n")    // 2
}

// Tom Araya is the "singer" of Slayer
class TomAraya(n:String): SoundBehaviour by ScreamBehavior(n)                       // 3

// You should know ;)
class ElvisPresley(n:String): SoundBehaviour by RockAndRollBehavior(n)              // 3

fun main(args: Array<String>) {
    val tomAraya = TomAraya("Trash Metal!")
    tomAraya.makeSound()                                                            // 4
    val elvisPresley = ElvisPresley("Dancin' to the Jailhouse Rock.")
    elvisPresley.makeSound()
}
```

</div>

In Kotlin it's easy to delegate method calls without any boilersplate.

1.  The interface SoundBehaviour is defined. Later there will be one class that implements the method and another will also have the interface, but just delegates the method call.
2.  The class ScreamBehavior and RockAndRollBehavior actually implement the method.
3.  The class TomAraya and ElvisPresley just delegate the methods defined by the interface SoundBehaviour to the responsible implementation. But doesn't need any boilerplate to delegate the method call at all.
4.  Call makeSound() on tomAraya of type TomAraya or elvisPresley of type ElvisPresley and it is delegated to the assiciated class
