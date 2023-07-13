object bd_clinic extends App{
    def factorial(n: Int): Int = {
      if (n == 0 || n == 1)
        1
      else
        n * factorial(n - 1)
    }

    val number = 5
    val result = factorial(number)
    println(s"The factorial of $number is $result")

}
