# first, last

### `first`, `last`

These functions return the first and the last element of the collection correspondingly. You can also use them with a predicate; in this case, they return the first or the last element that matches the given predicate.

If a collection is empty or doesn't contain elements matching the predicate, the functions throw `NoSuchElementException`.

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
fun main() {

//sampleStart
    val numbers = listOf(1, -2, 3, -4, 5, -6)            // 1
    
    val first = numbers.first()                          // 2
    val last = numbers.last()                            // 3
    
    val firstEven = numbers.first { it % 2 == 0 }        // 4
    val lastOdd = numbers.last { it % 2 != 0 }           // 5
//sampleEnd

    println("Numbers: $numbers")
    println("First $first, last $last, first even $firstEven, last odd $lastOdd")
}
```

</div>

1. Defining a collection of numbers.
2. Picking the first element.
3. Picking the last element.
4. Picking the first even element.
5. Picking the last odd element.

### `firstOrNull`, `lastOrNull`

These functions work almost the same way with one difference: they return `null` if there are no matching elements.
<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
fun main() {

//sampleStart
   val words = listOf("foo", "bar", "baz", "faz")         // 1
   val empty = emptyList<String>()                        // 2
   
   val first = empty.firstOrNull()                        // 3
   val last = empty.lastOrNull()                          // 4
   
   val firstF = words.firstOrNull { it.startsWith('f') }  // 5
   val firstZ = words.firstOrNull { it.startsWith('z') }  // 6
   val lastF = words.lastOrNull { it.endsWith('f') }      // 7
   val lastZ = words.lastOrNull { it.endsWith('z') }      // 8
//sampleEnd

   println("First $first, last $last")
   println("First starts with 'f' is $firstF, last starts with 'z' is $firstZ")
   println("First ends with 'f' is $lastF, last ends with 'z' is $lastZ")
}
```

</div>

1. Defining a collection of words.
2. Define an empty collection.
3. Picking the first element from empty collection. It supposed to be `null`.
4. Picking the last element from empty collection. It supposed to be `null` as well.
5. Picking the first word starting with 'f'.
6. Picking the first word starting with 'z'.
7. Picking the last word ending with 'f'.
8. Picking the last word ending with 'z'.
