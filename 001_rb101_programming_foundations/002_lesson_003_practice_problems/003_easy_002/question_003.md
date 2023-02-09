# Easy 2, Question 3: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*:

​	-*Input*: A given hash, ```ages```, containing the following key-value pairs: 

```ruby
{ "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
```

​	Also given is another hash, ```additional_ages```, containing the following key-value pairs:

```ruby
{ "Marilyn" => 22, "Spot" => 237 }
```

​	

-*Output*: The given hash, ```ages```, containing its own key-value pairs and those from the given ```additional_ages``` hash.



-*Rules*: Both initialized local variables and their corresponding hashes have been given. The ages for Marilyn and Spot are to be added from the ```additional_ages``` variable to the ```ages``` variable.



-*Clarifying questions*: Does the order in which the combined key-value pairs to be contained within the ```ages``` variable matter?



-*Mental model*: Add the two name-and-age key-value pairs from the hash assigned to the given initialized local variable ```additional_ages``` to the hash pointed to by the given initialized local variable, ```ages```. 



### <u>"E": Examples/Test Cases</u>



-*Example 1*: 

​	-*Input*: 

```ruby
some_ages = { "stone" => 2500000, "dark" => 900 }
```

and

```ruby
another_age = { "late middle" => 250 }
```



​	-*Output*: 

```ruby
some_ages = { "stone" => 2500000, "dark" => 900, "late middle" => 250 }
```





### <u>"D": Data Structure</u>



-I'll be working with a ```Hash``` method.



### <u>"A": Algorithm</u>



-Add the given key-value pair from the hash stored in the ```additional_ages``` variable to the given hash stored in the ```ages``` variable.



## =Code with Intent=



### <u>"C": Code</u>



```ruby
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

# Option 1:

ages = ages.merge(additional_ages)

# Option 2:

ages.merge!(additional_ages)
```

