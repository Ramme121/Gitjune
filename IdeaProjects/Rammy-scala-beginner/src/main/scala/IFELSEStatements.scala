object IfElseExample extends App {
  val number = -8

  if (number > 0) {
    println("Number is positive")
  } else {
    println("Number is non-positive")

      val number1 = 10
      val number2 = 5
      var result: String = ""

      if (number1 > 0 && number2 > 0) {
        result = "Both numbers are positive"
      } else if (number1 > 0 || number2 > 0) {
        result = "At least one number is positive"
      } else {
        result = "Both numbers are non-positive"
      }

      println(result)
    }

}

