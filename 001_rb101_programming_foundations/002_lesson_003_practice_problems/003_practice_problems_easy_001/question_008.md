# Easy 1, Question 8: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*:

​	-*Input*: A given initialized local variable, ```flintstones```, pointing at a hash containing six key-and-value pairs. Each key in the hash corresponds to a string, and each value in the hash corresponds to an integer.

​	-*Output*: An array with two elements, corresponding to a given key-and-value pair.



-*Rules*: The initialized local variable is given, along with the hash it points to. The hash has been populated with six given key-and-value pairs.



-*Clarifying questions*: Is the given initialized local variable to be pointed to a new object -- the requested array -- or is the requested array to be returned without being stored in a variable?



-*Mental model*: Given a hash contained in a given initialized local variable, ```flintstones```, return a given key-and-value pair as an array.



### <u>"E": Examples/Test Cases</u>



-*Example 1*: 

​	-*Input*: ```jetsons = {  "George" => 0, "Jane" => 1, "Elroy" => 2, "Judy" => 3, "Rosie" => 4, "Astro" => 5 }```

​	-*Output*: ```["Elroy", 2]```



### <u>"D": Data Structure</u>



-I need to convert a key-value pair that consists of a string for a key and an integer for a value inside of a hash into an array.



### <u>"A": Algorithm</u>



-Call a method on the given initialized local variable ```flintstones``` and pass in the string ```"Barney"``` as its argument so that an array that contains ```"Barney"``` and ```2``` as its two element is returned.



## =Code with Intent=



### <u>"C": Code</u>

```ruby
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
flintstones.assoc("Barney")

```

