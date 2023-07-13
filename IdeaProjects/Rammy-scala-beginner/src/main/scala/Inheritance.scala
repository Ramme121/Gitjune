/*In Scala, you can extend a class to create a subclass or derived class t
hat inherits the properties and methods of the superclass or base class.
This is known as class inheritance or class extension.*/

class Vehicle(var brand: String, var year: Int) {
  def startEngine(): Unit = {
    println("Engine started!")
  }

  def stopEngine(): Unit = {
    println("Engine stopped!")
  }
}

class Car(brand: String, year: Int, var color: String) extends Vehicle(brand, year) {
  def drive(): Unit = {
    println("Car is driving...")
  }

  def honk(): Unit = {
    println("Honk! Honk!")
  }
}

object inh {
  def main(args: Array[String]): Unit = {
    val car = new Car("Toyota", 2021, "Red")
    car.startEngine()
    car.drive()
    car.honk()
    car.stopEngine()
  }
}

