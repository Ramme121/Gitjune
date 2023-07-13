object StringInterpolationExample extends App {
  val name = "Alice"
  val age = 25
  val city = "London"

  // Using s-interpolation
  val message1 = s"Hello, my name is $name. I am $age years old."
  println(message1)

  // Using f-interpolation
  val message2 = f"My age is $age%.2f years." // Format age as a floating-point number with 2 decimal places
  println(message2)

  // Using raw-interpolation
  val message3 = raw"Welcome to $city!\nThis is a new line." // Preserve the raw format, ignoring escape characters
  println(message3)
}
