/*Options in Scala are used to handle the presence or absence of a value.
They are particularly useful for scenarios where a value may be present or may be missing.
An Option can be either Some(value),indicating the presence of a value, or None,
indicating the absence of a value.
*/

object OptionExample extends App {
  // Creating an Option
  val someValue: Option[Int] = Some(10)
  val noneValue: Option[String] = None

  // Accessing Option values
  println("Some Value: " + someValue.getOrElse("No value provided"))
  println("None Value: " + noneValue.getOrElse("No value provided"))

  // Checking if Option has a value
  println("Some Value is defined: " + someValue.isDefined)
  println("None Value is defined: " + noneValue.isDefined)

  // Option methods
  val doubledValue1 = someValue.map(_ * 2)
  println("Doubled Value (Some): " + doubledValue1.getOrElse("No value provided"))

  val doubledValue2 = noneValue.map(_.toUpperCase)
  println("Doubled Value (None): " + doubledValue2.getOrElse("No value provided"))

  val filteredValue = someValue.filter(_ > 5)
  println("Filtered Value: " + filteredValue.getOrElse("No value provided"))
}
