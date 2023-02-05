# Easy 1, Question 1: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*:

​	-*Input*: An array of four given integers, three of which are unique, assigned to an initialized local variable called ```numbers```, also given.

​	-*Output*: The integers will be converted to strings, each appearing on their own new line. ```nil``` will be returned.



-*Rules*: Code with given integers, data structures, and methods has been provided:

​	-The ```Array#uniq``` method is called by the ```numbers``` variable. 

​	-The ```Kernel#puts``` method is then invoked with the ```numbers``` variable passed in as the argument.



-*Clarifying questions*: None.



-*Mental model*: Determine what will be printed when the provided code is run. 



### <u>"E": Examples/Test Cases</u>



-*Example 1*:

​	-*Input*: ```some_numbers = [-1, 0, nil, 0]```.

​	-*Output*: ```puts some_numbers``` would print out the following, each on its own line: ```-1```, ```0```, a blank new line, and then ```0```. ```puts``` returns ```nil```.



### <u>"D": Data Structure</u>



-The data structure for the input is given as an array containing an integer for each of its elements.



### <u>"A": Algorithm</u>



-The algorithm is given in the provided code: ```Array#uniq``` is called on a variable that points to an array of integers, all given. Following this on a new line, ```Kernel#puts``` is invoked with the given variable passed in as the argument to the method.



## =Code with Intent=



### <u>"C": Code</u>



-The code has been provided. The output of:

```ruby
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers
```

will be:

```Ruby
# Calling Array#uniq -- a non-destructive method-- on the local variable called numbers will return this new array containing only the unique, i.e., non-repeating, integers from the array that numbers is pointing to.

[1, 2, 3] 

# Calling Kernel#puts on the local variable called numbers will print out the following, with each integer being converted to a string and printed on its own line.

1
2
2
3

```
