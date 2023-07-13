object SetExample extends App {
  // Creating a set
  val numbers: Set[Int] = Set(1, 2, 3, 4, 5)

  // Adding elements to a set
  val updatedSet1 = numbers + 6
  println("Set after adding 6: " + updatedSet1)

  // Removing elements from a set
  val updatedSet2 = numbers - 3
  println("Set after removing 3: " + updatedSet2)

  // Set operations
  val set1: Set[Int] = Set(1, 2, 3)
  val set2: Set[Int] = Set(3, 4, 5)

  val union = set1.union(set2)
  println("Union of sets: " + union)

  val intersection = set1.intersect(set2)
  println("Intersection of sets: " + intersection)

  val diff = set1.diff(set2)
  println("Difference of sets (set1 - set2): " + diff)

  // Set methods
  println("Set contains 2: " + numbers.contains(2))
  println("Set size: " + numbers.size)
  println("Set is empty: " + numbers.isEmpty)
  // Iterating over a set using a for loop
  println("Set elements:")
  for (num <- numbers) {
    println(num)
  }
}

