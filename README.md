# Kotlin by Example

This is sources of [Kotlin Examples](https://play.kotlinlang.org/byExample/overview).

### How to make example

Create markdown file in `examples` folder.

```md
# Header

Lorem ipsum dolor sit `amet`, consectetur adipisicing elit. Aspernatur, molestias, velit?

`​`​`run-kotlin
fun main(args: Array<String>) {
    println("Hello from template")
}
`​`​`

1. Epsum `factorial` non deposit quid pro quo hic escorol.
2. Souvlaki ignitus carborundum e pluribus unum.
3. Lorem ipsum dolor `sit` amet, consectetur adipisicing elit. Dicta ipsa ipsam odio officiis repellat suscipit unde vel voluptatibus. Dolorum esse eum fugit nihil provident quae quaerat quidem reiciendis, repudiandae ullam.
4. Quote meon an `estimate` et non interruptus stadium.
5. Quote meon an `estimate`


| Tables        | Are           | Cool  |
| ------------- |:-------------:| -----:|
| col 3 is      | right-aligned | 10000 |
| col 2 is      | centered      |   100 |
| zebra stripes | are neat      |    11 |

### Links

See more information in our [website](https://kotlinlang.org/)
``` 
Render as:

<img width="1009" alt="screen shot 2018-08-17 at 2 48 04 pm" src="https://user-images.githubusercontent.com/10503748/44264811-a973cf00-a22c-11e8-9c3c-d0d85203d1a3.png">

How to use different attributes on runnable examples see [Kotlin Playground documentation](https://github.com/JetBrains/kotlin-playground/blob/master/README.md).

### Guidelines

1. Try and keep text to a minimum. Remember, this site is not trying to replace documentation nor necessarily describe all edge cases or dive into details. Rule of thumb should be a single paragraph introducing the example. Rest should be line annotations.
2. Use 4 spaces for tabs.
3. Make sure examples compile and also have some output when they run.

### How to contribute

1. Fork & clone our repository.
2. Create new chapter with examples or add new example to existing chapter.
    1. Create `chapter` folder in `examples` folder.
    2. Create `description.md` file in your chapter and set a header — it's a chapter name!
    3. Create examples files.

Path to your example will be `https://host/byExample/chapter/myExample1`


*Have a nice Kotlin!*
