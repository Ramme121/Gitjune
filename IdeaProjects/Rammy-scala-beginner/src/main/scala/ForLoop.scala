object ForLoop extends App{

  for (i <- 1 to 5) {
    println(i)
  }
  val fruits = List("apple", "banana", "orange")

  for (fruit <- fruits) {
    println(fruit)
  }

  val numbers = List(1, 2, 3, 4, 5)

  for (number <- numbers if number % 2 == 0) {
    println(number)
  }

}
