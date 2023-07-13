object ListExample extends App {
  // Creating a list
  val numbers: List[Int] = List(1, 2, 3, 4, 5)

  // Accessing list elements
  println("First element: " + numbers.head)
  println("Last element: " + numbers.last)
  println("Element at index 2: " + numbers(2))

  // List length
  println("List length: " + numbers.length)

  // Prepending and appending elements
  val newList1 = 0 :: numbers
  println("List after prepending 0: " + newList1)
  val newList2 = numbers :+ 6
  println("List after appending 6: " + newList2)

  // Concatenating lists
  val moreNumbers: List[Int] = List(7, 8, 9)
  val combinedList = numbers ++ moreNumbers
  println("Combined list: " + combinedList)

  // List methods
  val reversedList = numbers.reverse
  println("Reversed list: " + reversedList)

  val filteredList = numbers.filter(_ % 2 == 0)
  println("Even numbers: " + filteredList)

  val mappedList = numbers.map(_ * 2)
  println("Doubled numbers: " + mappedList)

  val sum = numbers.sum
  println("Sum of list elements: " + sum)
}
