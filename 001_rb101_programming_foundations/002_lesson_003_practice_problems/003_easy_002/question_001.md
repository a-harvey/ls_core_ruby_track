# Easy 2, Question 1: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*:

​	-*Input*: A given hash containing strings as keys and integers as values, corresponding to names and ages. This hash is assigned to a given initialized local variable, ```ages```.

​	-*Output*: A boolean object.



-*Rules*: The variable and the hash it points to, along with the hash's keys and values, are provided. The string to check for, "Spot", is also given.



-*Clarifying questions*: None.



-*Mental model*: Determine if a specified string is present in a given hash.



### <u>"E": Examples/Test Cases</u>



-*Example 1*: 

​	-*Input*: ```wins = { "Player" => 3, "Computer" => 2, "Universe" => 1 }``` and a name to check for, "Spot", which will be stored as a string and a key if it exists in the hash.

​	-*Output*: ```false```.



### <u>"D": Data Structure</u>



-I'll need to use a ```Hash``` method that returns a boolean object.



### <u>"A": Algorithm</u>



-Check if the hash pointed to by the ```ages``` variable contains the string ```"Spot"```.



## =Code with Intent=



### <u>"C": Code</u>



```ruby
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.include?("Spot")
```



-Bonus 1:

```ruby
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.has_key?("Spot")
```



-Bonus 2:

```ruby
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.member?("Spot")
```


