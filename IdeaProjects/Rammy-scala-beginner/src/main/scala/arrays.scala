object ArrayExample extends App {
  // Creating an array
  val numbers: Array[Int] = Array(1, 2, 3, 4, 5)

  // Accessing array elements
  println("Element at index 2: " + numbers(2))

  // Updating array elements
  numbers(3) = 10
  println("Updated element at index 3: " + numbers(3))

  // Array length
  println("Array length: " + numbers.length)

  // Iterating over an array
  println("Array elements:")
  for (num <- numbers) {
    println(num)
  }

  // Array methods
  val sortedNumbers = numbers.sorted
  println("Sorted array: " + sortedNumbers.mkString(", "))

  val sum = numbers.sum
  println("Sum of array elements: " + sum)

  val containsThree = numbers.contains(3)
  println("Array contains 3: " + containsThree)

  val distinctNumbers = numbers.distinct
  println("Distinct elements: " + distinctNumbers.mkString(", "))

  val filteredNumbers = numbers.filter(_ % 2 == 0)
  println("Even numbers: " + filteredNumbers.mkString(", "))
}
