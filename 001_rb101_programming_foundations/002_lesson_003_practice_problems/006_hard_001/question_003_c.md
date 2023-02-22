# Hard 1, Question 3c: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*:

​	-*Input*: 

```ruby
one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)
```



​	-*Output*: 

```ruby
one is: two
two is: three
three is: one
```



-*Rules*: The method definition for ```mess_with_vars``` is given, along with the three parameters it defines, which are ```(one, two, three)``` on lines 1-5. Lines 2-4 contain the method calls and arguments passed into the variables scoped locally to the method. Lines 7-9 contain the given variables and the strings that they are assigned to. Line 11 invokes ```mess_with_vars```, passing the variables from lines 7-9 in as arguments. Lines 13-15 print out the values that the variables in lines 7-9 point to.



-*Clarifying questions*:  None.



-*Mental model*: Uncover what lines 13-15 will print to the screen. Will the values of the variables initialized in lines 7-9 change? A method that takes those three variables as arguments, ```mess_with_vars```,  is defined on lines 1-5, and lines 2-4 contain calls to the ```String#gsub!``` method.



### <u>"E": Examples/Test Cases</u>



-*Example 1*:

​	-*Input*: 

```ruby
one = "nil"
two = "0"
three = "-1"

mess_with_vars(one, two, three)
```



​	-*Output*: 

```ruby
one is: nil
two is: 0
three is: -1
```



### <u>"D": Data Structure</u>



-Lines 7-9 contain the initialized local variables ```one```, ```two```, and ```three```, and the string objects each point to: ```"one"```, ```"two"```, and ```"three"```,  respectively.  These objects are passed in as arguments to ```mess_with_vars``` on line 11, and the destructive method ```String#gsub!``` is invoked on the variables within ```mess_with_vars```, which point to the same objects that the variables point to on lines 7-9.



```ruby
def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end
```

The objects that the variables point to are strings throughout the data's journey.



### <u>"A": Algorithm</u>



-Write a method, ```mess_with_vars```, that defines three parameters: ```one```, ```two```, and ```three```. Inside the method:

​	-Invoke ```String#gsub!``` on ```one``` and pass in ```"one", "two"``` as arguments.

​	-Invoke ```String#gsub!``` on ```two``` and pass in ```"two", "three"``` as arguments.

​	-Invoke ```String#gsub!``` on ```three``` and pass in ```"three", "one"``` as arguments.

-Initialize three local variables: ```one```, ```two```, and ```three```.

​	-Point each of these to a string version of the variable name.

-Invoke ```mess_with_vars``` and pass in as arguments those three local variables.

-Print out the values of the local variables as strings.



## =Code with Intent=



### <u>"C": Code</u>



-The last line of ```mess_with_vars``` is the only line returned, as there is no explicit ```return```. However, unlike with A) and B), the string objects pointed to by the variables initialized on lines 7-9 are mutated after being passed in as arguments to ```mess_with_vars``` on line 11. When the ```String#gsub!``` method is called on lines 2-4, that mutates the objects pointed to by those variables inside the ```mess_with_vars``` method. It is not variable reassignment.



Lines 2-4 also provide the value of the string that will be changed (the first argument passed into ```String#gsub!```). Those values match the strings pointed to by the variables initialized on lines 7-9. If those variables on lines 7-9 pointed to string objects that were not equal to the initial arguments to ```String#gsub!``` as provided on lines 2-4, then the string objects will not be mutated.