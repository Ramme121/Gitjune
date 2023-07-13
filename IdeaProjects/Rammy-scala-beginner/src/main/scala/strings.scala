object StringExample extends App {
  // String concatenation
  val str1 = "Hello"
  val str2 = "World"
  val concat = str1 + " " + str2
  println("Concatenation: " + concat)

  // String interpolation
  val name = "Alice"
  val age = 30
  val interpolated = s"My name is $name and I am $age years old."
  println("Interpolation: " + interpolated)

  // Multi-line strings
  val multiLine = """
                    |This is a multi-line
                    |string in Scala.
                    |It preserves newlines and formatting.
                    |""".stripMargin
  println("Multi-line string:")
  println(multiLine)

  // String methods
  val text = "Hello, World!"
  println("Length: " + text.length)
  println("Uppercase: " + text.toUpperCase)
  println("Lowercase: " + text.toLowerCase)
  println("Substring: " + text.substring(7, 12))
  println("Contains 'World': " + text.contains("World"))
  println("Replace: " + text.replace("Hello", "Hi"))
}
