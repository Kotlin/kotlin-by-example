## Kotlin by Example

[Kotlin by Example](https://kotlin.github.io/kotlinbyexample) is a site that focuses on teaching you Kotlin using small annotated examples. It is inspired, amongst other things by [Go by Example](http://gobyexample.com)

## Driven by Contributions

The site welcomes and encourages community contributions. While the project originators will contribute examples as time permits, the main idea behind this project is for the community
to contribute. To that end, we've tried to make contributions as simple as possible. 

## How it works

The site uses AsciiDoc with some infrastructure put in place that allows for additional testing. Every source code example is 
verified to be correct, and optionally, if the sample generates output, it is also verified to be correct. Once it passes all checks, the AsciiDoc is
then converted to HTML and published. 

All of this is done [automatically using TeamCity](https://teamcity.jetbrains.com/project.html?projectId=Kotlinbyexample&tab=projectOverview). This means that all 
contributors need to do is create a simple example. The rest is handled automatically (once the Pull Request is reviewed). 

## How to Contribute

To contribute an example is very straight-forward:

1. Create a new file with the example you want to contribute inside the `docs` folder. For example `data-classes.adoc`
2. Write out your example. Make sure you annotated it properly.
3. Optionally add check to verify the output of your example.
4. Submit a pull request.

The site verifies the source code using [`mark-code`](https://github.com/hhariri/mark-code). Check out the [README](https://github.com/hhariri/mark-code/blob/master/README.md) for instructions on how to insert
code snippets and what is supported. You can also look at the [AsciiDoc reference](http://asciidoctor.org/docs/) for more information about AsciiDoc syntax.


## Getting Help

If you get stuck, contact one of the [authors](https://twitter.com/hhariri) or reach out to us on [Kotlin Slack](http://slack.kotlinlang.org), on the *#kotlin-by-example* channel.


## License

Project is Licensed under MIT (c) 2017 JetBrains
