# Html Builder

Kotlin provides you with an option to describe structured data in a declarative style with _builders_.

Below is an example of a type-safe Groovy-style builder. In this example, we will describe an HTML page in Kotlin.

```run-kotlin-canvas
package html

import org.w3c.dom.*
import kotlin.browser.document
import kotlin.browser.window

fun main(args: Array<String>) {
    //sampleStart
    val result = html {                                            // 1
        head {                                                     // 2
            title { +"HTML encoding with Kotlin" }
        }
        body {                                                     // 2
            h1 { +"HTML encoding with Kotlin" }
            p {
                +"this format can be used as an"                   // 3
                +"alternative markup to HTML"                      // 3
            }

            // an element with attributes and text content
            a(href = "http://jetbrains.com/kotlin") { +"Kotlin" }

            // mixed content
            p {
                +"This is some"
                b { +"mixed" }
                +"text. For more see the"
                a(href = "http://jetbrains.com/kotlin") {
                    +"Kotlin"
                }
                +"project"
            }
            p {
                +"some text"
                ul {
                    for (i in 1..5)
                        li { +"${i}*2 = ${i*2}" }
                }
            }
        }
    }
    //sampleEnd

    document.body!!.appendChild(result.element)
}

abstract class Tag(val name: String) {
    val element = document.createElement(name)
    protected fun <T : Tag> initTag(tag: T, init: T.() -> Unit): T {
        tag.init()
        element.appendChild(tag.element)
        return tag
    }
}

abstract class TagWithText(name: String) : Tag(name) {
    operator fun String.unaryPlus() {
        element.appendChild(document.createTextNode(this + " "))
    }
}

class HTML() : TagWithText("html") {
    fun head(init: Head.() -> Unit) = initTag(Head(), init)
    fun body(init: Body.() -> Unit) = initTag(Body(), init)
}


class Head() : TagWithText("head") {
    fun title(init: Title.() -> Unit) = initTag(Title(), init)
}

class Title() : TagWithText("title")

abstract class BodyTag(name: String) : TagWithText(name) {
    fun b(init: B.() -> Unit) = initTag(B(), init)
    fun p(init: P.() -> Unit) = initTag(P(), init)
    fun h1(init: H1.() -> Unit) = initTag(H1(), init)
    fun ul(init: UL.() -> Unit) = initTag(UL(), init)
    fun a(href: String, init: A.() -> Unit) {
        val a = initTag(A(), init)
        a.href = href
   }
}

class Body() : BodyTag("body")
class UL() : BodyTag("ul") {
    fun li(init: LI.() -> Unit) = initTag(LI(), init)
}

class B() : BodyTag("b")
class LI() : BodyTag("li")
class P() : BodyTag("p")
class H1() : BodyTag("h1")

class A() : BodyTag("a") {
    public var href: String
        get() = element.getAttribute("href")!!
        set(value) {
            element.setAttribute("href", value)
        }
}

fun html(init: HTML.() -> Unit): HTML {
    val html = HTML()
    html.init()
    return html
}

```

1. `html` is actually a function call that takes a [lambda expression](http://kotlinlang.org/docs/reference/lambdas.html) as an argument.
   `html` function takes one parameter which is itself a function.
   The type of the function is `HTML.() -> Unit`, which is a function type with receiver. 
   This means that we need to pass an instance of type `HTML` (a receiver) to the function,
   and we can call members of that instance inside the function.

2. `head` and `body` are member functions of the`HTML` class.

3. Adds the text to tags by calling the `unaryPlus()` operation, like `+"HTML encoding with Kotlin"`.

For details see: [Type Safe Builders](http://kotlinlang.org/docs/reference/type-safe-builders.html)