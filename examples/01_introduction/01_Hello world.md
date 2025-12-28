# Hello World

```run-kotlin
package org.kotlinlang.play         // 1

fun main() {                        // 2
    println("Hello, World!")        // 3
}
```

1. O código Kotlin geralmente é definido em pacotes. A especificação do pacote é opcional: se você não especificar um pacote em um arquivo fonte, seu conteúdo será direcionado para o pacote padrão.
2. O ponto de entrada de uma aplicação Kotlin é a função main. Você pode declará-la sem parâmetros. O tipo de retorno não é especificado, o que significa que a função não retorna nada.
3. println escreve uma linha na saída padrão. Ela é importada implicitamente. Além disso, vale notar que os ponto e vírgula no final das linhas de código são opcionais.
