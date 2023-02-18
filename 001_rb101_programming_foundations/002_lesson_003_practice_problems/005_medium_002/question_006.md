# Medium 2, Question 6: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*:

​	-*Input*: A color that takes the form of a string object, pointed to by a variable. That variable is passed in as an argument to the method ```color_valid```.

​	-*Output*: ```true``` or ```false```



-*Rules*: The method ```color_valid``` is given. It takes one argument: the parameter ```color```. The method will return ```true``` if the object that the locally scoped variable ```color``` points to is equal to the string objects ```"blue"``` or ```"green"```; otherwise, the method will return ```false```. The method is to be simplified, but the return value is not to be changed.



-*Clarifying questions*: None.



-*Mental model*: Simplify the given ```color_valid``` method without affecting its return value.



### <u>"E": Examples/Test Cases</u>



-*Example 1*:

​	-*Input*: ```shade = "red" # A local variable that will be passed as an argument to the #color_valid method```

​	-*Output*: ```false```



-*Example 2:*

​	-*Input*: ```shade = 0``` 

​	-*Output*: ```false```



### <u>"D": Data Structure</u>



-An object is passed in as an argument to the method ```color_valid``` where it is evaluated for equality against two string objects. A boolean object is returned.



### <u>"A": Algorithm</u>



-Define a method, ```color_valid```, which has one parameter, a locally-scoped variable called```color```.

​	 -Compare ```color``` to the string objects ```"blue"``` or ```"green"```.

​		-If either of these evaluates to ```true```, return ```true```.

​		-Otherwise, return ```false```.



## =Code with Intent=



### <u>"C": Code</u>



-I can simplify the given code by removing lines 3-6; line 2 will return ```true``` if the conditions are met. Otherwise, ```false``` will be returned.

```ruby
def color_valid(color)
  color == "blue" || color == "green"
end
```

