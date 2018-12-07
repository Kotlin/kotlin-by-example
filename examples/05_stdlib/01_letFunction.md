# let

`let` function  allows you to call a specified functional block on an object. This function is useful for scoping and null-checks. 

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
fun main() {

    fun checkStringContent(ns: String?) {
            println("for \"$ns\":")
    
            ns.let {                                                  // 1
                println("\tcontent: " + it)                           // 2
            }
        }
        
        checkStringContent(null)
        checkStringContent("")
        checkStringContent("some string with Kotlin")
    
    fun checkNullableString(ns: String?) {
        println("for \"$ns\":")
        
        ns?.let {                                                   // 3
            println("\tis empty? " + it.isEmpty())                  
            println("\tcontains Kotlin? " + it.contains("Kotlin"))
        }
    }
    checkNullableString(null)
    checkNullableString("")
    checkNullableString("some string with Kotlin")
}

```

</div>

1. Defining a code block to execute on `ns`.
2. Inside the curly braces `ns` is accessible by the name `it`.
3. Using a null-safe call, so `let` and its code block are executed only on non-null values.   

`let` can also be called on a result of another function execution:
<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
fun getStringOfLength(l: Int) = ".".repeat(l)

fun main() {    
    fun checkString(l: Int) {
    	val empty = getStringOfLength(l).let {
            println("\"$it\" is empty: ${it.isEmpty()} ")    // 1

    	}
    }
    
    checkString(0)
    checkString(1)
}

```

</div>

1. Here `it` is the result of the `getStringOfLength(l)` call. 