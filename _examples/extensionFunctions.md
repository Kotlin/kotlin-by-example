---
title: Extension Functions
---

<div class="sample" markdown="1">

```kotlin
//sampleStart
data class Item(val name: String, val price: Float)                                   // 1  

data class Order(val items: Collection<Item>)                                         // 2  

fun Order.maxPricedItemValue(): Float = this.items.maxBy { it.price }?.price ?: 0F    // 3  
fun Order.maxPricedItemName() = this.items.maxBy { it.price }?.name ?: "NO_PRODUCTS"  // 4

//sampleEnd
fun main(args: Array<String>) {

    val Order.commaDelimitedItemNames: String
        get() = items.map { it.name }.joinToString()//<3>
    
    val order = Order(listOf(Item("Bread", 25.0F), Item("Wine", 29.0F), Item("Water", 12.0F)))
    
    println("Max priced item name: ${order.maxPricedItemName()}")
    println("Max priced item value: ${order.maxPricedItemValue()}")
    println("Items: ${order.commaDelimitedItemNames}")

}
```

</div>

1. We define simple models of `Item` and `Order`. `Order` can contain arbitrary `Collection` of `Item` s
2. We define extension functions for `Order` type. Later we call these functions directly on the instance of that type. 
3. We can also define extension properties.
4. Read more about signature of https://kotlinlang.org/docs/reference/extensions.html[extensions]. Signature
is very much like standard function or property signature, with addition that we need to specify type we're attaching function or property to.


<div class="sample" markdown="1">

```kotlin
//sampleStart
fun <T> T?.nullSafeToString() = this?.toString() ?: "NULL"  // 1
//sampleEnd
fun main(args: Array<String>) {
    println(null.nullSafeToString())
    println("Kotlin".nullSafeToString())
}
```

</div>

1. It is even possible to execute extensions on `null` references. In their implementation we can check for 
   `null` reference and based on that we can do any arbitrary logic. Example:
