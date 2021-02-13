# dynamic

*dynamic* is a special type in Kotlin/JS. It basically turns off Kotlin's type checker.
That is needed in order  to interoperate with untyped or loosely typed environments, such 
as the JavaScript ecosystem.

```run-kotlin-js
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

1. Any value can be assigned to a `dynamic` variable type.
2. A dynamic value can be assigned to anything.
3. A dynamic variable can be passed as an argument to any function.
4. Any property or function with any arguments can be called on a `dynamic` variable. 
5. A function call on a `dynamic` variable always returns a dynamic value, so it is possible to chain the calls.
6. Operators, assignments, and indexed access (`[..]`) are translated "as is". Beware!
