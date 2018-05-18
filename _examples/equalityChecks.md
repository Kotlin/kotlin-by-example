---
title: Equality Checks
---

Kotlin uses `==` for structural comparison and `===` for referential comparison.

More precisely, `a == b` compiles down to `a == null ? b == null : a.equals(b)`.

<div class="sample" markdown="1">

```kotlin
fun main(args: Array<String>) {

  val authors = setOf("Shakespeare", "Hemingway", "Twain")
  val writers = setOf("Twain", "Shakespeare", "Hemingway")

  println(authors == writers)   // 1
  println(authors === writers)  // 2
}
```

</div>

1. Returns `true` because it calls `authors.equals(writers)` and sets ignore element order.
2. Returns `false` because `authors` and `writers` are distinct references.
