#Kotlin by Example

This is sources of Kotlin Examples.

###How to make example

Create markdown file in `examples` folder.

```md
# Header

Lorem ipsum dolor sit `amet`, consectetur adipisicing elit. Aspernatur, molestias, velit?

<div class="kotlin-language" theme="idea">
`​`​`kotlin
fun main(args: Array<String>) {
    println("Hello from template")
}
`​`​`
</div>

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

### How to contribute

1. Fork & clone our repository.
2. Create new chapter with examples or add new example to existing chapter.
3. Add path to `examples-config.json`

```json
[
  {
    "title": "Chapter",
    "url": "/chapter",
    "files": [
      {
        "url": "/chapter/myExample1",
        "title": "My Example 1"
      },
      {
        "url": "/chapter/myExample2",
        "title": "My Example 2"
      }
    ]
  }
]

```

Path to your example will be `https://host/byExample#/chapter/myExample1`


*Have a nice Kotlin!*
