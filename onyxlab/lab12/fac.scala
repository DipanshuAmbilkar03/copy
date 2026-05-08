object Factorial {
  def main(args: Array[String]): Unit = {

    val n = 5
    var fact = 1

    for(i <- 1 to n) {
      fact = fact * i
    }

    println("Factorial = " + fact)
  }
}