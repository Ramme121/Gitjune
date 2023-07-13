object HigherOrderFunction extends App {
  def math(x: Double, y: Double, z: Double, f: (Double, Double) => Double): Double = {
    f(f(x, y), z)
  }

  val result = math(50, 20, 10, _-_)
  println(result)
}
