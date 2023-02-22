# Hard 1, Question 1: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*:

​	-*Input*: A local variable, ```greeting```, called outside of the ```if``` clause that it was initialized in.

​	-*Output*: ```nil```.



-*Rules*: The ```if``` clause is provided. ```greeting``` is initialized within it, and then ```greeting``` is referenced outside of a conditional that will not be executed.



-*Clarifying questions*: None.



-*Mental model*: Determine what will be printed to the screen when a variable is invoked outside of the ```if``` clause that it was initialized in. ```greeting``` will be assigned to "hello world" in the conditional, but only if ```false``` is the condition that is met.



### <u>"E": Examples/Test Cases</u>



-*Example 1*:

​	-*Input*:

```ruby
if false
  salutations = "hi there"
end

salutations
```



​	-*Output*: ```nil```



### <u>"D": Data Structure</u>



-The string object pointed to by ```greeting``` will only be printed out if the condition that must be met is equal to ```false```.



### <u>"A": Algorithm</u>



-Write a conditional expression that initializes a variable and points it to a given string object, but only if the condition is ```false```.

-Reference that variable outside of the condition.



## =Code with Intent=



### <u>"C": Code</u>



-If line 1 was written as ```if true```, then ```greeting``` would print ```"hello world"```. But the code as given will never return ```"hello world"```, since flow control expressions in Ruby evaluate to ```true``` apart from ```false``` or ```nil```. Since the code within the conditional won't be executed, ```greeting``` will point to ```nil```.

