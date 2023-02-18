# Medium 2, Question 4: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*:

​	-*Input*: A string and an array passed in as expected arguments to a method, ```tricky_method_two```.

​	-*Output*: 

```ruby
My string looks like this now: "pumpkinsrutabaga"
My array looks like this now: ["pumpkins"]
```



-*Rules*: The method, ```tricky_method_two``` is given, along with its parameters (```a_string_param, an array_param```). The variables that will be passed in as arguments when ```tricky_method_two``` is called are also supplied: ```my_string``` points to a string object, ```"pumpkins"```, and ```my_array``` points to an array object: ```["pumpkins", "rutabaga"]```.



-*Clarifying questions*: None.



-*Mental model*: When ```tricky_method_two``` is called with ```my_string``` and ```my_array``` passed in as arguments, how will their printed output differ?



### <u>"E": Examples/Test Cases</u>



-*Example 1*:

​	-*Input*:

```ruby
yet_another_string = "oranges"
yet_another_array = ["oranges"]
tricky_method_two(yet_another_string, yet_another_array)

puts "My string looks like this now: #{yet_another_string}"
puts "My array looks like this now: #{yet_another_array}"
```



​	-*Output*: 

```ruby
My string looks like this now: orangesrutabaga
My array looks like this now: ["oranges"]
```



### <u>"D": Data Structure</u>



-The string object pointed to by ```my_string``` will remain a string throughout the program; the object will be mutated by the method call. The array object pointed to by ```my_array``` will remain an array. When the object it points to is passed in to ```tricky_method_two``` and assigned to the local variable ```an_array_param```, a new array object will be created due to the reassignment operation that is invoked within the method. ```puts``` returns ```nil```.



### <u>"A": Algorithm</u>



-Write a method, ```tricky_method_two```, defining it with a string parameter and an array parameter. The method should:

​	-Mutate the string object passed in, appending the string ```"rutabaga"``` to the object that was pointed to by the argument.

​	-Reassign the locally-scoped array variable to now point at a new array object, with a new array element added to the array that was originally pointed to by the argument.

-Initialize a local variable, ```my_string```, and point it to a string object: ```"pumpkins"```.

-Initialize a local variable, ```my_array```, and point it to an array object: ```["pumpkins"]```.

-Invoke ```tricky_method_two``` and pass in ```my_string``` and ```my_array``` as arguments.

-Print the objects that both ```my_string``` and ```my_array``` point to.



## =Code with Intent=



### <u>"C": Code</u>



-The call to ```puts "My string looks like this now: #{my_string}"``` will print out ```My string looks like this now: pumpkinsrutabaga```. Line 2 of the ```tricky_method_two``` definition contains the shovel operator, which mutates the object it's called upon. In this case, it's called upon the locally-scoped variable ```a_string_param```, which contains the same ```object_id``` as the string object that is pointed to by the variable ```my_string```, which is passed in as an argument to ```tricky_method_two```.



-The call to ```puts "My array looks like this now: #{my_array}"``` will print out ```My array looks like this now: ["pumpkins"]```. This is because line 3 of ```tricky_method_two``` 's method definition reassigns the variable that is passed in (```my_array```, which is assigned to the locally scoped variable ```an_array_param```) to point at a new array object containing two string elements. The array object pointed to by ```my_array``` is not mutated.

