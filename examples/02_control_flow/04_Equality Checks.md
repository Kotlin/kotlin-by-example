# Equality Checks

Kotlin uses `==` for structural comparison and `===` for referential comparison.

More precisely, `a == b` compiles down to `a == null ? b == null : a.equals(b)`.

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
fun main(args: Array<String>) {
//sampleStart

  val authors = setOf("Shakespeare", "Hemingway", "Twain")
  val writers = setOf("Twain", "Shakespeare", "Hemingway")

  println(authors == writers)   // 1
  println(authors === writers)  // 2
//sampleEnd
}
```

</div>

1. Returns `true` because it calls `authors.equals(writers)` and sets ignore element order.
2. Returns `false` because `authors` and `writers` are distinct references.
