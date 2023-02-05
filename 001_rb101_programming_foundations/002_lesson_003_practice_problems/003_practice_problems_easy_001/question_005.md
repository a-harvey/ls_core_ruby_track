# Easy 1, Question 5: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*:

​	-*Input*: The given integer ```42``` and the given integer range between ```10``` and ```100```.

​	-*Output*: The boolean object ```true```.



-*Rules*: I can use a method within the ```Range``` class to determine if the given integer is within the given integer range.



-*Clarifying questions*: N/A. The suggestion to use the ```Range``` class is helpful.



-*Mental model*: Use a method to see if the given integer ```42``` fits within the given integer range of ```10``` to ```100```.



### <u>"E": Examples/Test Cases</u>



-*Example 1*: 

​	-*Input*: A range of ```50``` to ```500```; determine if the integer ```40``` is within this range.

​	-*Output*: ```false```. 



### <u>"D": Data Structure</u>



-I'll need to use one of the ```Range``` methods and pass in an integer as an argument.



### <u>"A": Algorithm</u>



-Invoke a ```Range``` method on an object containing a span of two given integers, ```10``` and ```100``` and pass in the given integer ```42``` as an argument.



## =Code with Intent=



### <u>"C": Code</u>

```ruby
# Range#cover?(42) could also be used as the method call on (10..100).

(10..100).include?(42)
```

