# Medium 1, Question 7: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*:

​	-*Input*: A given hash, stored in a given initialized local variable, ```munsters```. ```munsters``` is passed in as the argument to a method, ```mess_with-demographics```, which contains instructions for the method's code to alter the values assigned to the ```"age"``` and ```"gender"``` keys in the hash that ```munsters``` points to.

​	-*Output*: The hash stored in ```munsters```, now mutated thanks to the side effects produced by ```mess_with_demographics```.



-*Rules*: The keys and values of the hash that's stored in the initialized local variable ```munsters``` are all given. Also given is the method ```mess_with-demographics```, which will destructively alter the hash passed in as the method's argument.



-*Clarifying questions*: None.



-*Mental model*: Discover whether the hash pointed to by the given initialized local variable ```munsters``` will be mutated by the execution of invoking the ```mess_with_demographics``` method and passing in ```munsters``` as its argument.



### <u>"E": Examples/Test Cases</u>



-*Example 1*: 

​	-*Input*:

```ruby
# Using my best guesses here...

flintstones = {
  "Fred" => { "age" => 35, "gender" => "male" },
  "Wilma" => { "age" => 35, "gender" => "female" },
  "Barney" => { "age" => 33, "gender" => "male" },
  "Betty" => { "age" => 33, "gender" => "female" }
  }
```



​	-*Output*: 

```ruby
flintstones = {
  "Fred" => { "age" => 77, "gender" => "other" },
  "Wilma" => { "age" => 77, "gender" => "other" },
  "Barney" => { "age" => 75, "gender" => "other" },
  "Betty" => { "age" => 75, "gender" => "other" }
  }
```



### <u>"D": Data Structure</u>



-I'll be working with a hash whose five keys each contain two key-value pairs as the value. The first set of sub-values are  integers, and the second set of sub-values are strings. The keys and sub-keys are all strings.



### <u>"A": Algorithm</u>



-Write a nested hash, ```munsters```. Store each member of the family's name as a key to the hash, and for the corresponding value, store two sub-key-value pairs that detail the family member's age and gender.

-Write a method, ```mess_with_demographics```, that takes a parameter of a locally-scoped variable, ```demo_hash```, pointing to a hash. This method should iterate through the keys of the passed-in hash and, for each value, it should increase and reassign the sub-value associated with the ```"age"``` sub-key by ```42```, and it should also reassign the sub-value associated with the ```"gender"``` sub-key to ```"other"```.



## =Code with Intent=



### <u>"C": Code</u>



-The given code that Spot executes will indeed alter the hash data stored in the ```munsters``` variable. The hash that ```munsters``` points to will be operated on destructively by the ```mess_with_demographics``` method call when it's passed in as an argument, because it's passed in by reference and not by value.

