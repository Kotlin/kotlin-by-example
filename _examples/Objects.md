---
title: object (basic example)
---
    
<div class="sample" markdown="1">

What is an object, in Kotlin? is a data type with a single implementation.

If you are a Java user and want to understand what "single" means, you can think to Singleton pattern:
it allows you to check that one (and only one) instance of that class will be created, even if 2 threads access it.

To achieve that in Kotlin, you only need to declare an object: no class, no constructor, only a lazy instance.
Why lazy? because it will be created one time, if object is used, otherwise, no.

In this example, you see a typical basic usage: a simple object/properties structure.
No need of class declaration: create a single object, declare properties and access it. 
 
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
