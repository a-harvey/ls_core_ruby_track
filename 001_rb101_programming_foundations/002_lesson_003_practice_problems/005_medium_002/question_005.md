# Medium 2, Question 5: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*: 

​	-*Input*: 

```ruby
my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}
```



​	-*Output*: 

```ruby
My string looks like this now: pumpkinsrutabaga
My array looks like this now: ["pumpkins", "rutabaga"]
```



-*Rules*: The existing code for ```tricky_method``` and the parameters it defines are given, as are the arguments that will be passed in when ```tricky_method``` is invoked. The given code should be refactored so that the result is both easier to predict and easier for the next programmer to maintain. ```tricky_method``` should not mutate either argument. ```my_string``` should be set to ```"pumpkinsrutabaga"``` and ```my_array``` should be set to ```["pumpkins", "rutabaga"]```.



-*Clarifying questions*: Is the prompt saying that a) in spite of ```tricky_method``` not mutating either argument, the arguments that are passed in -- ```my_string``` and ```my_array``` -- should be initialized as ```"pumpkinsrutabaga"``` and ```["pumpkins", "rutabaga"]```, respectively? Or, is it saying that b) ```my_string``` should be reassigned to ```"pumpkinsrutabaga"``` and ```my_array``` should be reassigned to ```["pumpkins", "rutabaga"]```?



-*Mental model*: Refactor the given code so that ```tricky_method``` does not mutate its arguments. Instead, the code within ```tricky_method``` should reassign the local variables to new string and array objects and then return those so they can be printed out to the screen outside of ```tricky_method```.



### <u>"E": Examples/Test Cases</u>



-*Example 1*:

​	-*Input*:

```ruby
a_fourth_string = "lemons"
a_fourth_array = ["lemons"]
tricky_method(a_fourth_string, a_fourth_array)

puts "My string looks like this now: #{a_fourth_string}"
puts "My array looks like this now: #{a_fourth_array}"
```



​	-*Output*: 

```ruby
My string looks like this now: lemonsrutabaga
My array looks like this now: ["lemons", "rutabaga"]
```



### <u>"D": Data Structure</u>



-Neither the string object nor the array object pointed to by ```my_string``` and ```my_array``` will be mutated by ```tricky_method```, but their variables will instead point to a new string object and to a new array object, respectively. ```puts``` will return ```nil```.



### <u>"A": Algorithm</u>



-Write a method, ```less_tricky_method```, that is defined with a string parameter and an array parameter. The method should:

​	-Reassign the locally-scoped string variable to now point at a new string object with a string appended to the string object that was originally pointed to by the argument.

​	-Reassign the locally-scoped array variable to now point at a new array object with a new array element appended to the array that was originally pointed to by the argument.

​	-Return these two new objects.

-Initialize a local variable, ```my_string```, and point it to a string object, ```"pumpkins"```.

-Initialize a local variable, ```my_array```, and point to an array object, ```["pumpkins"]```.

-Reassign ```my_string``` and ```my_array``` to the values returned by invoking ```less_tricky_method```, passing in ```my_string``` and ```my_array``` as arguments.

-Print the objects that both ```my_string``` and ```my_array``` now point to.



## =Code with Intent=



### <u>"C": Code</u>



```ruby
def less_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]
  
  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = less_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
```

