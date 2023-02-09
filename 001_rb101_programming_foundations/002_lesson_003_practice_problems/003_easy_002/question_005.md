# Easy 2, Question 5: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*:

​	-*Input*: A given array stored inside of a given initialized local variable. The array contains only strings for elements, and there are six of them.

​	-*Output*: The given array, refactored.



-*Rules*: The array and its string contents are given, and so is the initialized local variable. The question is asking to present an easier way to write the array.



-*Clarifying questions*: What does "easier" mean in this context? Since the variable and the array that is stored in it (as are the contents of the array) are given, and the question isn't asking for the array to be reorganized, can I assume it's asking for a literally simpler way to type or present what the array will contain?



-*Mental model*: Find the simplest way to write a given array containing strings as elements.



### <u>"E": Examples/Test Cases</u>



-*Example 1*: 

​	-*Input*: ```jetsons = ["George", "Jane", "Judy", "Elroy", "Astro", "Rosie"]```

​	-*Output*: ```jetsons = ["George", "Jane", "Judy", "Elroy", "Astro", "Rosie"]```



### <u>"D": Data Structure</u>



-I'm working with an array here that contains strings. The strings are names of characters in both the input and the output.



### <u>"A": Algorithm</u>



-Store the names of the six core characters from the Flintstones in an array as elements, without using punctuation.



## =Code with Intent=



### <u>"C": Code</u>



```flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)```

