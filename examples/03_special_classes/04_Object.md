# Object Keyword

Classes and objects in Kotlin work the same way as in most object-oriented languages: a *class* is a blueprint, and an *object* is an instance of a class. Usually, you define a class and then create multiple instances of that class:

```run-kotlin
import java.util.Random

class LuckDispatcher {                    //1 
    fun getNumber() {                     //2 
        var objRandom = Random()
        println(objRandom.nextInt(90))
    }
}

fun main() {
    val d1 = LuckDispatcher()             //3
    val d2 = LuckDispatcher()
    
    d1.getNumber()                        //4 
    d2.getNumber()
}
```

1. Defines a blueprint.
2. Defines a method.
3. Creates instances.
4. Calls the method on instances. 

In Kotlin you also have the [**object** keyword](https://kotlinlang.org/docs/reference/object-declarations.html). It is used to obtain a *data type with a single implementation*.

If you are a Java user and want to understand what "*single*" means, you can think of the **Singleton** pattern:
it ensures you that only one instance of that class is created even if 2 threads try to create it.

To achieve this in Kotlin, you only need to declare an `object`: no class, no constructor, only a lazy instance.
Why lazy? Because it will be created once when the object is accessed. Otherwise, it won't even be created.

### `object` Expression

Here is a basic typical usage of an `object` **expression**: a simple object/properties structure.
There is no need to do so in class declaration: you create a single object, declare its members and access it within one function. 
Objects like this are often created in Java as anonymous class instances.

```run-kotlin
fun rentPrice(standardDays: Int, festivityDays: Int, specialDays: Int): Unit {  //1

    val dayRates = object {                                                     //2
        var standard: Int = 30 * standardDays
        var festivity: Int = 50 * festivityDays
        var special: Int = 100 * specialDays
    }

    val total = dayRates.standard + dayRates.festivity + dayRates.special       //3

    print("Total price: $$total")                                               //4

}

fun main() {
    rentPrice(10, 2, 1)                                                         //5
}
```

1. Creates a function with parameters.
2. Creates an object to use when calculating the result value.
3. Accesses the object's properties.
4. Prints the result.
5. Calls the function. This is when the object is actually created.

### `object` Declaration

You can also use the `object` **declaration**. It isn't an expression, and can't be used in a variable assignment. You should use it to directly access its members:

```run-kotlin
object DoAuth {                                                 //1 
    fun takeParams(username: String, password: String){         //2 
        println("input Auth parameters = $username:$password")
    }
}

fun main(){
    DoAuth.takeParams("foo", "qwerty")                          //3
}

```

1. Creates an object declaration.
2. Defines the object method.
3. Calls the method. This is when the object is actually created.

### Companion Objects

An object declaration inside a class defines another useful case: the **companion object**. 
Syntactically it's similar to the static methods in Java: you call object members using its *class name* as a qualifier.
If you plan to use a companion object in Kotlin, consider using a *package-level* function instead.  

```run-kotlin
class BigBen {                                  //1 
    companion object Bonger {                   //2
        fun getBongs(nTimes: Int) {             //3
            for (i in 1 .. nTimes) {
                print("BONG ")
            }
        }
    }
}

fun main() {
    BigBen.getBongs(12)                         //4
}
```

1. Defines a class.
2. Defines a companion. Its name can be omitted.
3. Defines a companion object method.
4. Calls the companion object method via the class name.
