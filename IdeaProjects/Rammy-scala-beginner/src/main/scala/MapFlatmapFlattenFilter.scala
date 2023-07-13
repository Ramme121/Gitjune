object HigherOrderMethodsExample extends App {
  // Map
  val numbers = List(1, 2, 3, 4, 5)
  val squaredNumbers = numbers.map(num => num * num)

  // FlatMap
  val nestedNumbers = List(List(1, 2), List(3, 4), List(5))
  val flattenedNumbers = nestedNumbers.flatMap(list => list)

  // Flatten
  val nestedList = List(List(1, 2), List(3, 4), List(5))
  val flattenedList = nestedList.flatten

  // Filter
  val evenNumbers = numbers.filter(num => num % 2 == 0)

  println("Squared Numbers: " + squaredNumbers)
  println("Flattened Numbers: " + flattenedNumbers)
  println("Flattened List: " + flattenedList)
  println("Even Numbers: " + evenNumbers)
}
