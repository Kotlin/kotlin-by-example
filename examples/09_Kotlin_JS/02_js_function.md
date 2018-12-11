# JS function

You can inline some JavaScript code into your Kotlin code using the `js("…")` function.
Should be used with extreme care. 

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3" data-target-platform="js">

```kotlin
fun main() {
// sampleStart
    js("alert(\"alert from Kotlin!\")") // 1
// sampleEnd    
}
```
</div>

1. Sending a JavaScript alert from a Kotlin function. 

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3" data-target-platform="js">

```kotlin
fun main(){
//sampleStart
  val json = js("{}")               // 1
  json.name = "Jane"                // 2
  json.hobby = "movies"
  
  println(JSON.stringify(json))     // 3
//sampleEnd
}
```

</div>

1. Creating a JavaScript object literal. The `js(...)` function return type is `dynamic`.
2. Adding some properties by utilizing the `dynamic` type capabilities.
3. Passing the JSON to JavaScript API.
