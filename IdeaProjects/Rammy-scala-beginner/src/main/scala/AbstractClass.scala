/*In Scala, an abstract class is a class that cannot be instantiated directly
but can be extended by other classes. It serves as a blueprint for creating derived classes,
which are required to implement the abstract members defined in the abstract class.*/

abstract class Animal {
  def sound(): Unit
}

class Dog extends Animal {
  override def sound(): Unit = {
    println("Woof!")
  }
}

class Cat extends Animal {
  override def sound(): Unit = {
    println("Meow!")
  }
}

object Main extends App {
  val dog = new Dog()
  val cat = new Cat()

  dog.sound() // Output: Woof!
  cat.sound() // Output: Meow!
}
