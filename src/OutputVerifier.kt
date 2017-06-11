package com.hadihariri.markcode

import java.io.ByteArrayOutputStream
import java.io.File
import java.io.PrintStream


class OutputVerifier {
    private val originalOut = System.out
    private val errors = mutableListOf<String>()

    fun verifySample(mainFunction: (Array<String>) -> Unit, expectedOutputFile: String, location: String) {
        val actualOutputStream = ByteArrayOutputStream()
        System.setOut(PrintStream(actualOutputStream))
        try {
            mainFunction(arrayOf())
        } catch (e: Exception) {
            actualOutputStream.writer().use { writer ->
                writer.write(e.toString() + "\n")
            }
        }
        val actualOutput = String(actualOutputStream.toByteArray(), Charsets.UTF_8).trimEnd()
        val expectedOutput = File(expectedOutputFile).readText().trimEnd()
        if (actualOutput != expectedOutput) {
            errors.add("Unexpected output for $expectedOutputFile at $location: $actualOutput")
        }
    }

    fun report() {
        System.setOut(originalOut)
        for (error in errors) {
            println(error)
        }
        if (errors.isNotEmpty()) {
            System.exit(1)
        }
    }
}