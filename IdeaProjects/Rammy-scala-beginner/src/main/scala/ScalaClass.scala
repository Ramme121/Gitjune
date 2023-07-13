/*In Scala, classes are used to define blueprints for creating objects.
They encapsulate data and behavior into a single unit.  */
object cls extends App {
  class Person(var name: String, var age: Int) {
    def greet(): Unit = {
      println(s"Hello, my name is $name and I am $age years old.")
    }
  }

  val person = new Person("John", 30)
  person.greet()
}


