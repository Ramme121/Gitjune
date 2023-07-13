object artiallyappliedfunc extends App{
  val sum = (a: Int, b: Int, c: Int)=> a+b+c
  val f = sum(10, _: Int, 20) //partial
  println(sum(10, 20, 30))
  println(f(100))

}
