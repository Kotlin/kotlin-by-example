---
title: Objects (basic usage)
---
    
<div class="sample" markdown="1">

A basic example of objects. They're useful when you just need to define a object/attributes structure w/o defining (inner) anonymous class: 
```kotlin
//sampleStart
fun rentPrice(standard_days: Int, special_days: Int, extra_days: Int): Unit {  //1 

    val rates = object {                                                       //2 
        var working: Int = 30 * standard_days                                  
        var holiday: Int = 50 * special_days
        var special: Int = 100 * extra_days
    }
    
    val total = rates.working + rates.holiday + rates.special                  //3 

    print("Total price: $$total")                                              //4 

}
//sampleEnd
```

</div>

1. Create a rentPrice function, w/ parameters (regular days, special days, extra days)
2. Create rates object, where you set vars values
3. Access object's vars
4. Print total

