# Generics

[Generics](https://kotlinlang.org/docs/reference/generics.html) are a genericity mechanism that's become standard in modern languages. Generic classes and functions increase code reusability by encapsulating common logic that is independent of a particular generic type, like the logic inside a `List<T>` is independent of what `T` is.

### Generic Classes

The first way to use generics in Kotlin is creating generic classes.

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
//sampleStart
class MutableStack<E>(vararg items: E) {              // 1

  private val elements = items.toMutableList()

  fun push(element: E) = elements.add(element)        // 2

  fun peek(): E = elements.last()                     // 3

  fun pop(): E = elements.removeAt(elements.size - 1)

  fun isEmpty() = elements.isEmpty()

  fun size() = elements.size

  override fun toString() = "MutableStack(${elements.joinToString()})"
}
//sampleEnd

fun main() {
  val stack = MutableStack(0.62, 3.14, 2.7)
  stack.push(9.87)
  println(stack)

  println("peek(): ${stack.peek()}")
  println(stack)

  for (i in 1..stack.size()) {
    println("pop(): ${stack.pop()}")
    println(stack)
  }
}

```

</div>

1. Defining a generic class `MutableStack<E>` where `E` is called the _generic type parameter_. At use-site, it is assigned to a specific type such as `Int` by declaring a `MutableStack<Int>`.
2. Inside the generic class, `E` can be used as a parameter like any other type.
3. You can also use `E` as a return type.

Note that the implementation makes heavy use of Kotlin's shorthand syntax for functions that can be defined in a single expression.


### Generic Functions

You can also [generify functions](https://kotlinlang.org/docs/reference/generics.html#generic-functions) if their logic is independent of the specific type. For instance, you can write a utility function to create mutable stacks easier:

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
class MutableStack<E>(vararg items: E) {              // 1

  private val elements = items.toMutableList()

  fun push(element: E) = elements.add(element)        // 2

  fun peek(): E = elements.last()                     // 3

  fun pop(): E = elements.removeAt(elements.size - 1)

  fun isEmpty() = elements.isEmpty()

  fun size() = elements.size

  override fun toString() = "MutableStack(${elements.joinToString()})"
}

//sampleStart
fun <E> mutableStackOf(vararg elements: E) = MutableStack(*elements)

fun main() {
  val stack = mutableStackOf(0.62, 3.14, 2.7)
  println(stack)
}
//sampleEnd
```

</div>

Note that the compiler can infer the generic type from the parameters of `mutableStackOf` so that you don't have to write `mutableStackOf<Int>(...)`.
