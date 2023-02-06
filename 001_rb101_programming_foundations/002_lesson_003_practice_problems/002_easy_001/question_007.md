# Easy 1, Question 7: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*:

​	-*Input*: A given nested array containing four elements, with the last two elements containing two strings as sub-elements, all assigned to the given initialized local variable, ```flintstones```.

​	-*Output*: An un-nested array containing the given six elements, stored in the given ```flintstones``` variable.



-*Rules*: The local initialized variable ```flintstones``` is given, and so are each of the elements in the array that it points to.



-*Clarifying questions*: Am I to assume that a new array should not be created, that the original array should be mutated?



-*Mental model*: Find a method to convert a given three-dimensional array into a two-dimensional array, stored in a given initialized local variable.



### <u>"E": Examples/Test Cases</u>



-*Example 1*: 

​	-*Input*: ```jetsons = ["George", "Jane", ["Elroy", "Judy"], ["Rosie", "Astro"]]```

​	-*Output*: ```jetsons = ["George", "Jane", "Elroy", "Judy", "Rosie", "Astro"]```



### <u>"D": Data Structure</u>



-I'm working with arrays and sub-arrays.



### <u>"A": Algorithm</u>



-Destructively flatten the three-dimensional array contained in the given initialized local variable, ```flintstones```.



## =Code with Intent=



### <u>"C": Code</u>

```ruby
flintstones = ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
flintstones.flatten!
```

