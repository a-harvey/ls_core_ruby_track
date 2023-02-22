# Hard 1, Question 3a: The PEDAC Process



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
one is: one
two is: two
three is: three
```



-*Rules*: Everything is given: the method definition, ```mess_with_vars```, and its defined parameters ```(one, two, three)``` on lines 1-5. Three local variables are initialized on lines 7-9 and are assigned to string objects. On line 11, ```mess_with_vars``` is invoked and the variables initialized on lines 7-9 are passed in as arguments. Lines 13-15 call ```#puts``` on each of the variables from lines 7-9, using interpolation to print their values as strings.



-*Clarifying questions*: None.



-*Mental model*: Determine what will be printed in lines 13-15. Lines 1-5 define a method, ```mess_with_vars```, and lines 7-9 initialize three variables that point to different string objects. Line 11 invokes ```mess_with_vars``` and passes in the variables from lines 7-9 as arguments.



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



-The variables initialized on lines 7-9 point to strings, which are all passed in as arguments to ```mess_with_vars``` on line 11. In the ```mess_with_vars``` method definition on lines 2-4, the locally scoped variables are reassigned to point at each other:

```ruby
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end
```

The objects the variables point to are strings throughout the data's journey.



### <u>"A": Algorithm</u>



-Write a method, ```mess_with_vars```, that defines three parameters: ```one```, ```two```, and ```three```. Inside the method: 

​	-Reassign the method-scoped local variable ```one``` to point to the object that ```two``` points to.

​	-Reassign the method-scoped local variable ```two``` to point to the object that ```three``` points to.

​	-Reassign the method-scoped local variable ```three``` to point to the object that ```one``` points to.

-Initialize three local variables: ```one```, ```two```, and ```three```.

​	-Point each of these to a string version of the variable name.

-Invoke ```mess_with_vars``` and pass in the three local variables as arguments.

-Print out the values of the local variables ```one```, ```two```, and ```three``` as strings.

​	

## =Code with Intent=



### <u>"C": Code</u>



-Only line 4 returns a value, since it's the last line of code executed in the method and there is no explicit ```return```. But the scope of the variables in the ```mess_with_vars``` method is internal to the method only, and the variables inside it are reassigned to new objects, so the objects pointed to by the variables outside of the method (lines 7-9) remain unchanged.

