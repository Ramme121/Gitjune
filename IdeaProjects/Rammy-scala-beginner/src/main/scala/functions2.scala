
  object DefaultValuesExample extends App {
    def greet(name: String = "Guest", age: Int = 30): Unit = {
      println(s"Hello, $name! Your age is $age.")
    }
    
    
    val add = (a: Int, b: Int) => a + b

    val result = add(5, 3)
    println("The sum is: " + result)

    // Calling the greet function with default values
    greet()

    // Calling the greet function with custom values
    greet("John", 25)
  }



