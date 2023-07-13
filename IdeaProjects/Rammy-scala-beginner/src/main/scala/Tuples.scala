/*Tuples in Scala are ordered collections of elements of different types.
They are useful for grouping related data together.
Tuples are immutable, meaning their elements cannot be modified once created.  */

object TupleExample extends App {
  // Creating a tuple
  val person: (String, Int, Boolean) = ("Alice", 30, true)

  // Accessing tuple elements
  println("Name: " + person._1)
  println("Age: " + person._2)
  println("Is Employed: " + person._3)

  // Destructuring a tuple
  val (name, age, isEmployed) = person
  println("Name: " + name)
  println("Age: " + age)
  println("Is Employed: " + isEmployed)

  // Tuple methods
  val tupleSize = person.productArity
  println("Tuple size: " + tupleSize)

  val reversedTuple = person.productIterator.toList.reverse
  println("Reversed tuple: " + reversedTuple)
}
