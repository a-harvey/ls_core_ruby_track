# Easy 2, Question 7: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*:

​	-*Input*: A given initialized local variable containing a given array whose elements are written in the percent string syntax. Also given are two string objects to add to the array.

​	-*Output*: The given array, now containing the two new additional string objects.



-*Rules*: The initialized local variable, its array and its array's elements are all given. The string objects to be added to the array are to be added together.



-*Clarifying questions*: None.



-*Mental model*: Add two string objects to a given array written in percent string syntax, stored in a given initialized local variable.



### <u>"E": Examples/Test Cases</u>



-*Example 1*: 

​	-*Input*: ```jetsons = %w(George Jane Judy Elroy)``` and two strings to add: ```"Rosie"``` and ```"Astro"```.

​	-*Output*: ```jetsons = ["George", "Jane", "Judy", "Elroy", "Rosie", "Astro"]```



### <u>"D": Data Structure</u>



-The two new inputs are coming in as strings and will remain strings as they are added to an array.



### <u>"A": Algorithm</u>



-Add two string literals to an existing array that contains five elements.



## =Code with Intent=



### <u>"C": Code</u>



```ruby
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.insert(6, "Dino", "Hoppy")
```

