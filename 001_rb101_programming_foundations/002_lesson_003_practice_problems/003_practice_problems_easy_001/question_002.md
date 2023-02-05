# Easy 1, Question 2: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*:

​	-*Input*: ```!``` and ```?``` are given as operators as part of a series of questions regarding their meanings and uses.

​	-*Output*: A boolean value; ```true``` or ```false```.



-*Rules*: I'm using PEDAC to answer a series of subquestions within Question 2, so I'll address the overarching question first to establish the rules of ```!``` and ```?```:

```!``` is at the end of some method names (check the documentation for which), sometimes mutating the calling object. ```!``` can also be placed before an object to convert the object into its opposite boolean value. If two exclamation marks (```!!```) are placed before an object, that object will return its boolean value.



```?``` is also at the end of some method names, sometimes returning a boolean (based on what the specific method is doing). It also functions as an operator.



-*Clarifying questions*:  In the examples provided, can I assume that the variables have been initialized and point to a value?



-*Mental model*: ```!``` and ```?``` have various functions in Ruby, depending on how they're being used.



### <u>"E": Examples/Test Cases</u>



-I'll use this section to begin working through the six sub-questions provided.



-*Example 1*:

​	-*Input*: Two objects separated by the ```!=``` operator. ```!=``` is used to check that objects being compared are not equal.

​	-*Output*: A boolean value, ```true```.



-*Example 2:*

​	-*Input*: An ```!``` prefacing a given method, ```user_name```.

​	-*Output*: An error message if ```user_name``` has not been initialized and assigned a value. If ```user_name``` has been initialized, pointing to the string ```"Andrew"```, for example, then placing ```!``` before ```user_name``` will return ```false```.



-*Example 3*:

​	-*Input*: An ```!``` after an object, like ```words.uniq!```

​	-*Output*: An error message if ```words``` has not been initialized and assigned a value, or if ```words``` has been initialized, pointing to a string (```"Words, words, words"```, for example), then placing ```!``` after ```uniq!```, as the method belongs to the ```Array``` class. If ```words``` is assigned to an array and then ```Array#uniq!``` is passed, ```words``` will be mutated, returning an array containing only the unique elements. ```!``` can't be appended onto just any method with the expectation that the method will function the same way with the exception of mutating the calling object; documentation must be checked.



-*Example 4*:

​	-*Input*: An object prefaced by ```?```.

​	-*Output*: If the object prefaces a single non-integer character, that character will be converted to a string. An error message will be returned if more than one character or an integer is placed after ```?```. ```?``` can also be used as part of the ternary operator; there needs to be a whitespace character between the truthy or falsey object to be evaluated and the first printed outcome possibility.



-*Example 5*:

​	-*Input*: Put ```?``` after an object.

​	-*Output*: An error will be returned if the object is placed right after the object, unless it is a method name that returns a boolean value. If there is a whitespace after an object -- and that object returns a boolean value -- followed by a ```?```, then ```?``` is functioning in the capacity of the ternary operator. If the object prefacing it returns ```true```, then the expression to the right of the ```?``` will be printed.



-*Example 6*:

​	-*Input*: Put ```!!``` before an object, like ```!!user_name```.

​	-*Output*: If ```user_name``` has not been initialized and assigned a value, an error will be returned. Otherwise, the boolean for that object (```true```, unless the object is ```false``` or ```nil```) will be returned.

### <u>"D": Data Structure</u>



-Each of the examples above utilizes the ```!``` or ```?``` operator.



### <u>"A": Algorithm</u>



-Each of the examples above returns a boolean value, except for ```!``` at the end of certain methods; in this case, the ```!``` may mutate the calling object or throw an error.



-*Example 1*: 

​	-Check to see that two integers are not equal.



-*Example 2:*

​	-Initialize a variable called ```user_name``` and store a user's name inside it.

​	-Print the opposite boolean value of the ```user_name``` variable.



-*Example 3:*

​	-Initialize a variable, ```words``` and store four elements inside of it, three of them unique and one a duplicate.

​	-Call ```Array#uniq!``` on ```words```.



-*Example 4:*

​	-Use the ternary operator to print out an object that returns ```true```.



-*Example 5*:

​	-Use the ternary operator to print out an object that returns ```false```.



*Example 6:*

​	-Initialize a variable, ```user_name```, and store the user's name inside of it.

​	-Print out the boolean value of ```user_name```.



## =Code with Intent=



### <u>"C": Code</u>

-I'll use this section to write code that addresses each of the six sub-questions given.



-*Example 1*:

 ```1 != 2```



-*Example 2*: 

```ruby
user_name = "Andrew"
!user_name
```



-*Example 3*:

```ruby
words = ["hi", "hello", "hi", "hey"]
words.uniq!
```



-*Example 4*:

```ruby
true ? "yes" : "no"
```



-*Example 5*:

```ruby
false ? "yes" : "no"
```



-*Example 6*:

```ruby
user_name = "Andrew"
!!user_name
```

