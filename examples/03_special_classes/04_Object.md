# Object keyword

First of all, let's start with some basic OOP concepts: a *class* is a blueprint, and an *object* is an instance of a class.
You define a class, then create multiple instances of that class:

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
import java.util.Random

class LuckDispatcher{                     //1 
    fun getNumber() {                     //2 
        var objRandom = Random()
        println(objRandom.nextInt(90))
    }
}

fun main(){
    val d1 = LuckDispatcher()             //3
    val d2 = LuckDispatcher()
    
    d1.getNumber()                        //4 
    d2.getNumber()
}
```

</div>

1. blueprint definition
2. method definition
3. instance creation
4. method calls 

Easy: we create two objects, both *instances* of LuckDispatcher class.

In Kotlin you have also an **object** keyword. What is? is a *data type with a single implementation*.

If you are a Java user and want to understand what "*single*" means, you can think to Singleton pattern:
it allows you to check that one (and only one) instance of that class will be created, even if 2 threads access it.

To achieve that in Kotlin, you only need to declare an **object**: no class, no constructor, only a lazy instance.
Why lazy? because it will be created one time, if object is used, otherwise, no.

In this example, you see a typical basic usage of an **object expression**: a simple object/properties structure.
No need of class declaration: create a single object, declare members and access it. 
Object like that, is often used like anonymous class in Java.

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
fun rentPrice(standardDays: Int, festivityDays: Int, specialDays: Int): Unit {  //1

    val dayRates = object {                                                     //2
        var standard: Int = 30 * standardDays
        var festivity: Int = 50 * festivityDays
        var special: Int = 100 * specialDays
    }

    val total = dayRates.standard + dayRates.festivity + dayRates.special       //3

    print("Total price: $$total")                                               //4

}


fun main(){
    rentPrice(10, 2, 1)                                                         //5
}
```

</div>

1. Create a rentPrice function, w/ parameters (regular days, festivity days, special days)
2. Create rates object, where you set vars values
3. Access object's vars
4. Print total
5. Access the instance (initialization), calling fun


You can have also **object declaration**: is not an expression, and cannot be used in a variable assignment, must be used directly:

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
object DoAuth {                                                 //1 
    fun takeParams(username: String, password: String){         //2 
        println("input Auth parameters = $username:$password")
    }
}


fun main(){
    DoAuth.takeParams("foo", "qwerty")                          //3
}

```

</div>

1. create object declaration
2. define method
3. use the object (initialization), calling method




An object declaration, inside a class, defines another useful case: the **companion object**. 
Syntactically similar to the static methods in Java, you call object's members using the *class* as qualifier.
In Kotlin, before defining a companion object, decide whether it is better to write a simple *package-level* function.  

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
class BigBen {                                  //1 
    companion object Bonger{                    //2
        fun getBongs(nTimes: Int){              //3
            for (i in 1 .. nTimes){
                print("BONG ")
            }
        }
    }
}


fun main(){
        BigBen.getBongs(12)                     //4
}
```

</div>

1. class definition, companion initialization
2. companion definition - name can be omitted
3. method definition
4. accessing companion object
