# Easy 2, Question 6: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*:

​	-*Input*: A given initialized local variable pointing to a given array whose elements are written as a string literal using the percent string syntax. Also given is a name as a string to add to the previously given string literal contained in the given array.

​	-*Output*: The given array that contains the string literal, stored in the given initialized local variable, which now includes the other given string.



-*Rules*: The initialized local variable, the percent string syntax contained within the array, and the string to add to it are all given.



-*Clarifying questions*: None.



-*Mental model*: Add a given string as an element to an existing array whose elements are all strings and are written in the percent string syntax. The array is assigned to a given initialized local variable.



### <u>"E": Examples/Test Cases</u>



-*Example 1*: 

​	-*Input*: ```jetsons = %w(George Jane Judy Elroy Rosie)``` and a string to add to this array, ```"Astro"```.

​	-*Output*: ```jetsons = ["George", "Jane", "Judy", "Elroy", "Rosie", "Astro"]```



### <u>"D": Data Structure</u>



-I'll be working with an ```Array``` method to add another element to the given array.



### <u>"A": Algorithm</u>



-Add the string ```"Dino"``` as an element to the other string elements stored in the ```flintstones``` array.



## =Code with Intent=



### <u>"C": Code</u>



```ruby
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.push("Dino")
```

