# Medium 1, Question 6: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*:

​	-*Input*: A given integer, ```42```, stored in a given initialized local variable, ```answer```.

​	-*Output*: ```34```



-*Rules*: The problem seeks the output of the given code. The first line of the code initializes the local variable, ```answer``` and assigns it to the integer ```42```. The last line of the code requests the output of ```p answer - 8```. The ```mess_with_it``` method definition expects a number to be passed in as an argument, as detailed by the method definition's local variable parameter, ```some_number``` and the lack of any kind of conversion method call on the integer ```8``` on line 4 or on line 9.



-*Clarifying questions*: None.



-*Mental model*: Read through the given code and determine what it will output. The code contains a given initialized local variable, a method definition, a method call whose returned result is stored in a new initialized local variable, and a subtraction method call on the first given initialized local variable.



### <u>"E": Examples/Test Cases</u>



-*Example 1*: 

​	-*Input*: ```answer = 0```

​	-*Output*: ```-8```



-*Example 2*:

​	-*Input*: ```answer = 9.9```

​	-*Output*: ```1.9```



### <u>"D": Data Structure</u>



-The data in ```answer``` is stored as an integer, and it retains that data type as it is reassigned to the method-specific local variable ```some_number``` in ```mess_with_it```. If the number in ```answer``` was a float, then it would retain that float data type throughout the given code.



### <u>"A": Algorithm</u>



-Initialize a local variable, ```answer```, and point it toward a number.

-Define a method, ```mess_with_it```, which takes a variable, ```some_number```, scoped at the method level as its parameter. Reassign ```some_number``` to the sum of itself plus ```8```.

-Pass in ```answer``` as an argument to ```mess_with_it``` and store its return result in a new, initialized local variable, ```new_answer```.

-Print the result of subtracting ```8``` from ```answer```.



## =Code with Intent=



### <u>"C": Code</u>



-The code prints ```34``` and returns ```34```, because it is the subtraction of ```8``` from ```answer``` (whose value is assigned to the integer ```42```) which is passed in as the argument to ```p``` on line 9.  The value of ```answer``` remains ```42``` throughout the code; had line 7 been written as ```answer = mess_with_it(answer)```, then ```answer```'s value would be stored as the integer ```50```.

