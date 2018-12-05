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

1. Declaring a class named `Customer` without any properties or user-defined constructors. A non-parameterized default constructor is created by Kotlin automatically.
2. Declaring a class with two propetries: immutable `id` and mutable `email`, and a constructor with two parameters `id` and `email`.
3. Creating an instance of the class `Customer` via the default constructor. Note that there is no `new` keyword in Kotlin.
4. Creating an instance of the class `Contact` using the constructor with two arguments.
5. Accessing the property `id`.
6. Updating the value of the property `email`.
