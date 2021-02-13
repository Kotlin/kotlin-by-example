# JS function

You can inline JavaScript code into your Kotlin code using the js("…") function.
This should be used with extreme care.


```run-kotlin-js
fun main() {
//sampleStart
    js("alert(\"alert from Kotlin!\")") // 1
//sampleEnd    
}
```

1. Sending a JavaScript alert from a Kotlin function. 

```run-kotlin-js
fun main(){
//sampleStart
  val json = js("{}")               // 1
  json.name = "Jane"                // 2
  json.hobby = "movies"
  
  println(JSON.stringify(json))     // 3
//sampleEnd
}
```

1. Creates a JavaScript object literal. The `js(...)` function return type is `dynamic`.
2. Adds some properties by utilizing the `dynamic` type capabilities.
3. Passes the JSON to JavaScript API.
