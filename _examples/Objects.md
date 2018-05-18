---
title: object (basic usage)
---
    
<div class="sample" markdown="1">

A basic example of object's usage. It's useful when you just need to define a simple object/attributes structure w/o defining (inner) anonymous classes: 
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
//sampleEnd
```

</div>

1. Create a rentPrice function, w/ parameters (regular days, festivity days, special days)
2. Create rates object, where you set vars values
3. Access object's vars
4. Print total

