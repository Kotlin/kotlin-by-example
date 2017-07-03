---
title: Classes
---
    
<div class="sample" markdown="1">

```kotlin
//sampleStart
class Customer                                  // 1

class Contact(val id: Int, var email: String)   // 2


fun main(args: Array<String>) {

    val customer = Customer()                   // 3
    
    
    val contact = Contact(1, "mary@gmail.com")  // 4

    println(contact.id)                         // 5
    contact.email = "jane@gmail.com"            // 6
}
//sampleEnd
```

</div>

1. Declare a class named `Customer` with parameterless constructor 
2. Declare a class with a immutable property id, an mutable property email and constructor with two parameters id and name
3. Create an instance of the class `Customer`
4. Create an instance of the class `Contact` using the constructor with two arguments
5. Access the property `id`
6. Write to the property `name`
    
    
