package Lectures.part1Basics

object ValuesVariablesType extends App {
  val X: Int = 42 //vals are immutable
  println(X)
  val y = 50    // compiler can infer type
  println(y)

  val aString: String = "hello"
  val anotherstring = "goodbye"
  val aBoolean: Boolean = true
  val aChar: Char = 'a'
  val anInt: Int = X
  val aShort: Short = 1234
  val aLong: Long = 1234567891
  val aFloat: Float = 42.3f
  val aDouble: Double = 42.22

  //Variables
  var aVariable: Int = 4
  aVariable = 5 //side effects (like on screen u see something and output u will see something
}

