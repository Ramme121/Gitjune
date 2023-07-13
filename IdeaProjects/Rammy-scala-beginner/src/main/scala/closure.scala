object ClosureExample extends App {
  def add(x: Int, y: Int) = x + y

  def add1(x: Int) = (y: Int) => x + y


  println(add(20, 10))
  println(add1(20)(10))
  val sum1 = add1(40)
  println(sum1(60))
}
