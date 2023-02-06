# Easy 1, Question 4: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*:

​	-*Input*: An array of integers -- numbered ```1```, ```2```,```3```, ```4```, and ```5``` -- assigned to ```numbers```, a local initialized variable.

​	-*Output*: An integer that has been removed from the ```numbers``` array.



-*Rules*: An array of consecutive integers, pointed at by the ```numbers``` local initialized variable, has been given. The two methods to be explored -- ```Array#delete_at``` and ```Array#delete``` have also been given.



-*Clarifying questions*: N/A. It's been stated that the ```numbers``` variable has been reset to point at the original array in between method calls.



-*Mental model*: Evaluate how the ```Array#delete_at``` and ```Array#delete``` methods differ, using a given array of five consecutive integers stored in a local initialized variable, ```numbers```.



### <u>"E": Examples/Test Cases</u>



-*Example 1*: 

​	-*Input*: ```sample_numbers = [-1, 0, 1, 2]```

​	-*Output*: Using ```Array#delete_at(1)```: ```0``` 



-*Example 2*:

​	-*Input*: ```sample_numbers = [-1, 0, 1, 2]```

​	-*Output*: Using ```Array#delete(1)```: ```1```



-*Example 3*:

​	-*Input*: ```sample_numbers = [nil, 0, 1]```

​	-*Output*: Using ```Array#delete_at(nil)```:  A```TypeError``` message.



-*Example 4*:

​	-*Input*: ```sample_numbers = [nil, 0, 1]```

​	-*Output*: Using ```Array#delete(nil)```: ```nil```



### <u>"D": Data Structure</u>



-I'll be using the given ```Array``` methods, ```Array#delete_at``` and ```Array#delete```, on an initialized local variable, ```numbers```, pointing at an array of five consecutive integers.



### <u>"A": Algorithm</u>



-Invoke a method to remove an integer destructively based on a given index from a given array, assigned to an initialized local variable.

-Invoke a method to remove a given integer destructively from a given array, assigned to an initialized local variable.



## =Code with Intent=



### <u>"C": Code</u>

```ruby
# This will return the integer at the given index that's passed in as the argument to Array#delete_at:
numbers.delete_at(1)

# This will return the integer that's been passed in as the argument to Array#delete:
numbers.delete(1)
```


