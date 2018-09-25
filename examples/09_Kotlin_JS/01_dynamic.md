# dynamic

*dynamic* is a special type in Kotlin/JS. It basically turns off Kotlin's type checker.
That is needed in order  to interoperate with untyped or loosely typed environments, such 
as the JavaScript ecosystem.

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3" data-target-platform="js">

```kotlin
fun main(){
//sampleStart
  val a: dynamic = "abc"                                               // 1
  val b: String = a                                                    // 2
  
  fun firstChar(s: String) = s[0]
  
  println("${firstChar(a)} == ${firstChar(b)}")                        // 3
  
  println("${a.charCodeAt(0, "dummy argument")} == ${b[0].toInt()}")   // 4
  
  println(a.charAt(1).repeat(3))                                       // 5
  
  fun plus(v: dynamic) = v + 2
  
  println("2 + 2 = ${plus(2)}")                                        // 6
  println("'2' + 2 = ${plus("2")}")
//sampleEnd
}
```

</div>

1. Any value can be assigned to variable to `dynamic` type
2. Dynamic value can be assigned to anything.
3. Dynamic value can be passed as argument to any function
4. Any property or function with any arguments can be called on `dynamic` value 
5. Dynamic call always returns dynamic value, so it is possible to chain them.
6. Operators, assignments and indexed access (`[..]`) are translated "as is". Beware!
