//scala-- key value pairs
/*bject maps extends App{
  val mymap : Map[Int, String] = {
    Map(801 -> "max", 802 -> "Tom", 804 -> "july")
  }
      println(mymap)


}*/

object MapExample extends App {
  // Creating a map
  val studentGrades: Map[String, Int] = Map(
    "Alice" -> 90,
    "Bob" -> 85,
    "Charlie" -> 95,
    "Dave" -> 80
  )

  // Accessing map elements
  println("Grade for Alice: " + studentGrades("Alice"))

  // Adding and updating map elements
  val updatedMap1 = studentGrades + ("Eve" -> 75)
  println("Map after adding Eve's grade: " + updatedMap1)

  val updatedMap2 = studentGrades.updated("Bob", 88)
  println("Map after updating Bob's grade: " + updatedMap2)

  // Map methods
  println("Map contains key 'Charlie': " + studentGrades.contains("Charlie"))
  println("Map size: " + studentGrades.size)
  println("Map is empty: " + studentGrades.isEmpty)

  // Iterating over a map
  println("Student Grades:")
  for ((name, grade) <- studentGrades) {
    println(s"$name: $grade")
  }
}



