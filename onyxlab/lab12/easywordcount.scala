val data = sc.parallelize(List(
  "dipanshu pranjal onyx kinjal shrejal mahi dipanshu onyx mahi mahi"
))

val words = data.flatMap(line => line.split(" "))

val wordCount = words.map(word => (word, 1)).reduceByKey(_ + _)
wordCount.collect().foreach(println)