---
title: object (expressions and declarations)
---
    
<div class="sample" markdown="1">
First of all, let's start with some basic concepts: a class is a blueprint, and an object is an instance of a class.
As you know, you can create multiple instances of a class:

```kotlin
import java.util.Random

class LuckDispatcher{                     //1 
    fun get_number() {                    //2 
        var obj_random = Random()
        println(obj_random.nextInt(90))
    }
}

fun main(args: Array<String>){
    val d1 = LuckDispatcher()            //3
    val d2 = LuckDispatcher()
    
    d1.get_number()
    d2.get_number()
}
``` 
1. blueprint definition
2. method definition
3. instance creation 

Easy: we create two objects, each one instance of LuckDispatcher.

But in Kotlin you have also a "object" keyword. What is? is a data type with a single implementation.

If you are a Java user and want to understand what "single" means, you can think to Singleton pattern:
it allows you to check that one (and only one) instance of that class will be created, even if 2 threads access it.

To achieve that in Kotlin, you only need to declare an object: no class, no constructor, only a lazy instance.
Why lazy? because it will be created one time, if object is used, otherwise, no.

In this example, you see a typical basic usage of an object expression: a simple object/properties structure.
No need of class declaration: create a single object, declare members and access it. 
It's often used like anonymous class in Java.
 
```kotlin
//sampleStart
fun rentPrice(standard_days: Int, festivity_days: Int, special_days: Int): Unit {  //1

    val day_rates = object {                                                       //2
        var standard: Int = 30 * standard_days
        var festivity: Int = 50 * festivity_days
        var special: Int = 100 * special_days
    }

    val total = day_rates.standard + day_rates.festivity + day_rates.special       //3

    print("Total price: $$total")                                                  //4

}


fun main(args: Array<String>){

    rentPrice(10, 2, 1)                                                            //5

}
//sampleEnd
```

</div>

1. Create a rentPrice function, w/ parameters (regular days, festivity days, special days)
2. Create rates object, where you set vars values
3. Access object's vars
4. Print total
5. Access the instance


You can have also object declaration: is not an expression, and cannot be used in a variable assignment, must be used directly:

```kotlin
object doAuth {                                                 //1 
    fun take_params(username: String, password: String){        //2 
        println("input Auth parameters = $username:$password")
    }
}


fun main(args: Array<String>){
    doAuth.take_params("foo", "qwerty")                         //3
}

```

1. create object declaration
2. define method
3. use object