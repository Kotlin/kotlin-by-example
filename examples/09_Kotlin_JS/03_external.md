# External declarations

*external* keyword allows to declare existing JavaScript API in a type-safe way.

```run-kotlin-js
external fun alert(msg: String)   // 1

fun main() {
  alert("Hi!")                    // 2
}
```

1. Declares an existing JavaScript function `alert` which takes a single `String` argument.
2. Uses `alert` as if it were regular Kotlin.

Note that Kotlin checks during compilation, that a single argument of type String is passed. 
Such a check prevents some bugs even when using pure JavaScript API.

Please [refer to the docs](https://kotlinlang.org/docs/reference/js-interop.html#external-modifier) in order 
to learn more about describing existing JavaScript API.
