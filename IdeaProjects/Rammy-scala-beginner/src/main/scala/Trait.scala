/*In Scala, a trait is a reusable component that defines a set of fields and behaviors.
Traits can be mixed into classes to
provide additional functionality without using inheritance. */


trait Greeting {
  def greet(): Unit = {
    println("Hello!")
  }
}

class Person(val name: String) extends Greeting {
  def introduce(): Unit = {
    println(s"My name is $name.")
  }
}

object trail extends App {
  val person = new Person("John")
  person.greet()     // Output: Hello!
  person.introduce() // Output: My name is John.
}
