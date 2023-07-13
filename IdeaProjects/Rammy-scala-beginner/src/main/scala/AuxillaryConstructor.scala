/*In Scala, auxiliary constructors are additional constructors defined within a class that a
llow you to create objects with different sets of parameters. T
hey provide flexibility in object creation by providing alternative ways to initialize the object. */

class Person(private var _name: String, private var _age: Int) {
  def this(name: String) = {
    this(name, 0) // Calls the primary constructor with age set to 0
  }

  def name: String = _name // Getter method for name property

  def age: Int = _age // Getter method for age property

  def age_=(newAge: Int): Unit = {
    _age = newAge // Setter method for age property
  }

  def greet(): Unit = {
    println(s"Hello, my name is $name and I am $age years old.")
  }
}

object abs {
  def main(args: Array[String]): Unit = {
    val person1 = new Person("John", 30)
    val person2 = new Person("Alice")

    person1.age = 35 // Set the age using the setter method
    person2.age = 25

    person1.greet()
    person2.greet()
  }
}
