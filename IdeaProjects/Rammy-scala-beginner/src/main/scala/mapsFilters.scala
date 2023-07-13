object MapFilterFlattenExample extends App {
  // Create a list of nested options
  val nestedOptions: List[Option[Int]] = List(Some(1), None, Some(3), None, Some(5))

  // Apply map operation to square each non-empty option value
  val squaredOptions: List[Option[Int]] = nestedOptions.map {
    case Some(num) => Some(num * num) // Square the value if it is non-empty
    case None => None // Preserve None values
  }
  println("Squared Options: " + squaredOptions)
  // Apply filter operation to select only non-empty squared option values
  val filteredOptions: List[Option[Int]] = squaredOptions.filter(_.isDefined)
  println("Filtered Options: " + filteredOptions)

  // Apply flatten operation to remove one level of nesting in the options
  val flattenedOptions: List[Int] = filteredOptions.flatten
  println("Flattened Options: " + flattenedOptions)
}
