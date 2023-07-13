/*Lazy evaluation is a programming technique in which the evaluation of an
expression is deferred until its value is actually needed. Scala provides support for
lazy evaluation through the use of lazy val and lazy parameters. */


/*lazy val: A lazy val is a value that is computed only when it is accessed for the
first time and then memoized for subsequent accesses. The computation is performed once and
the result is cached,
so any subsequent access to the lazy val will retrieve the cached value without re-computation.*/
object LazyEvaluationExample extends App {
  lazy val expensiveOperation: Int = {
    println("Performing expensive operation...")
    42
  }

  println("Before accessing lazy val")
  println(expensiveOperation)
  println(expensiveOperation)
}

