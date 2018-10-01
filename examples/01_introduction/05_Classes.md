# Classes

The [class declaration](https://kotlinlang.org/docs/reference/classes.html#classes) consists of the class name, the class header (specifying its type parameters, 
the primary constructor etc.) and the class body, surrounded by curly braces. 
Both the header and the body are optional; if the class has no body, curly braces can be omitted.
    
<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
class Customer                                  // 1

class Contact(val id: Int, var email: String)   // 2

fun main() {

    val customer = Customer()                   // 3
    
    val contact = Contact(1, "mary@gmail.com")  // 4

    println(contact.id)                         // 5
    contact.email = "jane@gmail.com"            // 6
}
```

</div>  

1. Declare a class named `Customer` with parameterless constructor.
2. Declare a class with an immutable property `id`, a mutable property `email` and constructor with two parameters `id` and `email`.
3. Create an instance of the class `Customer`; note, no `new` keyword.
4. Create an instance of the class `Contact` using the constructor with two arguments.
5. Access the property `id`.
6. Write a new value to the property `email`.
