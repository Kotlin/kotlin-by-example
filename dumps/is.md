# is Checks

The `is` operator checks if an expression is an instance of a type and more.
If we is-checked an immutable local variable or property, there's no need
to cast it explicitly to the is-checked type.



<div class="language-kotlin" theme="idea" markdown="1">

```kotlin
fun main(args: Array<String>) {
    println(getStringLength("aaa"))
    println(getStringLength(1))
}

fun getStringLength(obj: Any): Int? {
    if (obj is String)
        return obj.length // no cast to String is needed
    return null
}
```

</div>
    
    
