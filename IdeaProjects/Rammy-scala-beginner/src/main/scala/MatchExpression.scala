
  object MatchExample extends App {
    val day = "Monday"

    val result = day match {
      case "Monday" => "Start of the week"
      case "Tuesday" | "Wednesday" | "Thursday" => "Middle of the week"
      case "Friday" => "End of the week"
      case _ => "Invalid day"
    }

    println(result)
  }



