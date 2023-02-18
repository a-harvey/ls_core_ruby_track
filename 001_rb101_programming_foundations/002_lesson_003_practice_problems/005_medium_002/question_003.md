# Medium 2, Question 3: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*:

​	-*Input*: A string and an array passed in as expected arguments to a method, ```tricky_method```.

​	-*Output*: 

```ruby
My string looks like this now: pumpkins
My array looks like this now: ["pumpkins", "rutabaga"]
```



-*Rules*: The method, ```tricky_method``` is given, along with its parameters. Also given are the arguments that will be passed into the method when it's invoked: a string, ```"pumpkins"``` and an array, ```["pumpkins"]```.



-*Clarifying questions*: None.



-*Mental model*: Discern what will be returned when the given ```tricky_method``` is invoked, having passed in a given string argument and a given array argument. ```tricky_method``` contains code that acts upon both the string and array variables that have been initialized locally within the method. When the string and array objects that were passed in as arguments to ```tricky_method``` are printed, how do the results differ?



### <u>"E": Examples/Test Cases</u>



-*Example 1*:

​	-*Input*:

```ruby
another_string = "apples"
another_array = ["apples"]
tricky_method(another_string, another_array)

puts "My string looks like this now: #{another_string}"
puts "My array looks like this now: #{another_array}"
```



​	-*Output*:

```ruby
My string looks like this now: apples
My array looks like this now: ["apples", "rutabaga"]
```



### <u>"D": Data Structure</u>



-Both the given string assigned to ```my_string``` and the given array assigned to ```my_array``` will retain their data types when passed into the ```tricky_method``` method as arguments. When ```puts``` is called on a string that interpolates the string value assigned to ```my_string```, a string will be printed out. When ```puts``` is called on a string that interpolates the array value assigned to ```my_array```, a string will be printed out that includes that array value, which will have been converted to a string. ```puts``` returns ```nil```.



### <u>"A": Algorithm</u>



-Write a method, ```tricky_method```, defining it with a string parameter and an array parameter. In the body of the method:

​	-Reassign the locally-scoped string variable to now point to a new object wherein ```"rutabaga"``` is appended to the end of the string object that was pointed to by the method argument.

​	-Add the string ```"rutabaga"``` as an element to the array object pointed to by the locally-scoped array variable.

-Initialize a local variable, ```my_string```, and point it to a string object: ```"pumpkins"```.

-Initialize a local variable, ```my_array```, and point it to an array object: ```["pumpkins"]```.

-Invoke ```tricky_method``` and pass in ```my_string``` and ```my_array``` as arguments.

-Print the objects that both ```my_string``` and ```my_array``` point to.



## =Code with Intent=



### <u>"C": Code</u>



-The call to ```puts "My string looks like this now: #{my_string}"``` will print out ```My string looks like this now: pumpkins``` because the object that ```my_string``` points to -- the string ```"pumpkins"``` -- will not be mutated by line 2 of the code. Line 2 deals with variable reassignment and as such, the local variable ```a_string_param``` that is scoped to ```tricky_method``` will point to a new, different object, ```"rutabaga"``` after being reassigned.



-The call to ```puts "My array looks like this now: #{my_array}"``` will print out ```My array looks like this now: ["pumpkins", "array"]``` because the object that ```my_array``` points to -- the array containing ```["pumpkins"]``` -- will be mutated when the shovel operator is used in line 3 to append ```"rutabaga"``` as a new element to the array pointed to by the ```an_array_param``` parameter.

