# Ranges

<div class="language-kotlin" theme="idea">

```kotlin
fun main() {
//sampleStart
    for(i in 0..3) {             // 1
        print(i)
    }
    print(" ")

    for(i in 2..8 step 2) {      // 2
        print(i)
    }
    print(" ")

    for (c in 'a'..'d') {        // 3
        print(c)
    }
    print(" ")

    for (c in 'a'..'g' step 2) { // 4
        print(c)
    }
    print(" ")

    for (i in 3 downTo 0) {      // 5
        print(i)
    }
    print(" ")

    val x = 2
    if (x in 1..10) {            // 6
        print(x)
    }
    print(" ")

    val y = 3
    if (y !in 1..4) {            // 7
        print(y)
    }
//sampleEnd
}
```

</div>

1. Create range starting from 0 up to 3 (inclusive) and iterate over it
2. You can define increment step for consecutive elements
3. Char ranges can be created as well
4. Increment step for char ranges are also valid
5. To create a range in _reverse_ order use `downTo()` function
6. Ranges are also useful in `if` statements
7. `!in` is oposite of `in`. Statement is equal to `_false_`

