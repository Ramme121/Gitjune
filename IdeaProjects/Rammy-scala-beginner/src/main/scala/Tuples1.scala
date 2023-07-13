object TupleExample1 extends App {
  // Creating a tuple with a map as an element
  val studentInfo: (String, Map[String, Int]) = ("Alice", Map("Math" -> 90, "Science" -> 85, "History" -> 92))

  // Accessing tuple elements
  val name = studentInfo._1
  val grades = studentInfo._2

  println("Student Name: " + name)
  println("Grades: " + grades)

  // Accessing map elements
  val mathGrade = grades("Math")
  println("Math Grade: " + mathGrade)

  // Updating map elements
  val updatedGrades = grades.updated("Science", 90)
  println("Updated Grades: " + updatedGrades)

  // Adding a new key-value pair to the map
  val newGrades = grades + ("English" -> 88)
  println("New Grades: " + newGrades)
}
