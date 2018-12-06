# Extension Functions and Properties

Kotlin lets you add new members to any class with the [extensions](https://kotlinlang.org/docs/reference/extensions.html) mechanism. Namely, there are two types of extensions: extension functions and extension properties. They look pretty much like usual functions and properties with the only difference: you need to specify the type that you extend.

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
data class Item(val name: String, val price: Float)                                   // 1  

data class Order(val items: Collection<Item>)  

fun Order.maxPricedItemValue(): Float = this.items.maxBy { it.price }?.price ?: 0F    // 2  
fun Order.maxPricedItemName() = this.items.maxBy { it.price }?.name ?: "NO_PRODUCTS"

val Order.commaDelimitedItemNames: String                                             // 3
    get() = items.map { it.name }.joinToString()

fun main() {

    val order = Order(listOf(Item("Bread", 25.0F), Item("Wine", 29.0F), Item("Water", 12.0F)))
    
    println("Max priced item name: ${order.maxPricedItemName()}")                     // 4
    println("Max priced item value: ${order.maxPricedItemValue()}")
    println("Items: ${order.commaDelimitedItemNames}")                                // 5

}
```

</div>

1. Defining simple models of `Item` and `Order`. `Order` can contain a collection of `Item` objects.
2. Adding extension functions for the `Order` type.  
3. Adding an extension property for the `Order` type.
4. Calling extension functions directly on an instance of `Order`.
5. Accessing the extension property on an instance of `Order`.

It is even possible to execute extensions on `null` references. In an extension function, you can check the object for `null` and use the result in your code:
   
<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
//sampleStart
fun <T> T?.nullSafeToString() = this?.toString() ?: "NULL"  // 1
//sampleEnd
fun main() {
    println(null.nullSafeToString())
    println("Kotlin".nullSafeToString())
}
```

</div>
