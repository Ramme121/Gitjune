/*lazy parameters: Scala also supports lazy evaluation for method parameters.
By marking a method parameter as lazy, the evaluation of the parameter is delayed
until it is accessed within the method body. This can be useful when the parameter value is not always
needed and can be expensive to compute.*/

object LazyParameterExample extends App {
  def expensiveComputation(): Int = {
    println("Performing expensive computation...")
    42
  }

  def processResult(result: => Int): Unit = {
    println("Processing result...")
    // Do some processing with the result
    println(s"Result: $result")
  }

  println("Before calling processResult")
  processResult(expensiveComputation())

}

