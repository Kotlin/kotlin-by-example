# let

The Kotlin standard library function `let` can be used for scoping and null-checks. When called on an object, `let` executes the given block of code and returns the result of its last expression.
The object is accessible inside the block by the reference `it` (by default) or a custom name. 

```run-kotlin
fun customPrint(s: String) {
    print(s.uppercase())
}

fun main() {
//sampleStart
    val empty = "test".let {               // 1
        customPrint(it)                    // 2
        it.isEmpty()                       // 3
    }
    println(" is empty: $empty")


    fun printNonNull(str: String?) {
        println("Printing \"$str\":")

        str?.let {                         // 4
            print("\t")
            customPrint(it)
            println()
        }
    }
    
    fun printIfBothNonNull(strOne: String?, strTwo: String?) {
        strOne?.let { firstString ->       // 5 
            strTwo?.let { secondString ->
                customPrint("$firstString : $secondString")
                println()
            }
        }
    }
    
    printNonNull(null)
    printNonNull("my string") 
    printIfBothNonNull("First","Second") 
//sampleEnd
}

```

1. Calls the given block on the result on the string "_test_".
2. Calls the function on "_test_" by the `it` reference.
3. `let` returns the value of this expression.
4. Uses safe call, so `let` and its code block will be executed only on non-null values.  
5. Uses the custom name instead of `it`, so that the nested `let` can access the context object of the outer `let`.
