import org.apache.spark.sql.SparkSession

object EvenOddCount {
  def main(args: Array[String]): Unit = {

    // Create Spark Session
    val spark = SparkSession.builder()
      .appName("Even Odd Count")
      .master("local[*]")
      .getOrCreate()

    // Create RDD
    val numbers = spark.sparkContext.parallelize(List(1,2,3,4,5,6,7,8,9,10))

    // Count even numbers
    val evenCount = numbers.filter(x => x % 2 == 0).count()

    // Count odd numbers
    val oddCount = numbers.filter(x => x % 2 != 0).count()

    // Print results
    println("Even Numbers Count = " + evenCount)
    println("Odd Numbers Count = " + oddCount)

    // Stop Spark
    spark.stop()
  }
}

EvenOddCount.main(Array())