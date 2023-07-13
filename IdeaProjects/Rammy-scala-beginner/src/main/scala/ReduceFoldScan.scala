object HigherOrderFunctionsExample extends App {
  /* Reduce -The reduce function applies a binary operation to the elements of a collection,
  starting from the first element and iteratively combining
  the result with the next element. It returns the final accumulated value.*/
  val numbers = List(1, 2, 3, 4, 5)
  val sum = numbers.reduce((acc, num) => acc + num)

  /* The fold function is similar to reduce but allows specifying an initial value.
  It applies a binary operation to the elements of a collection,
  starting from the initial value and iteratively combining the result with each element.*/
  val sumWithInitial = numbers.fold(0)((acc, num) => acc + num)

  /* Scan- The scan function is similar to fold, but it returns a collection of
  intermediate results instead of a single value. It applies a binary operation to the elements of a
  collection,starting from the initial value and accumulating the intermediate results.*/
  val sumScan = numbers.scan(0)((acc, num) => acc + num)

  println("Sum: " + sum)
  println("Sum with Initial: " + sumWithInitial)
  println("Sum Scan: " + sumScan)
}
