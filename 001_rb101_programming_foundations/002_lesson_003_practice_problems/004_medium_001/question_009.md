# Medium 1, Question 9: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*:

​	-*Input*: A method, ```foo```, passed in as an argument to another method, ```bar```. ```foo``` will always return ```"yes"```. ```bar``` will return ```"yes"``` if no argument is passed in, or if ```"yes"``` is passed in.

​	-*Output*: ```"no"```



-*Rules*: Both methods, ```foo``` and ```bar```, are provided, and so is the code to be tested: ```bar(foo)```.



-*Clarifying questions*: None.



-*Mental model*: Find what ```bar(foo)``` returns, when both ```foo``` and ```bar``` are given methods which each have an optional parameter they take if no arguments are passed in.



### <u>"E": Examples/Test Cases</u>



-*Example 1*: 

​	-*Input*: ```foo(bar)```

​	-*Output*: ```"yes"```



### <u>"D": Data Structure</u>



-These methods return a given string expression, based on whether an argument has been passed in to the given method.



### <u>"A": Algorithm</u>



-Write a method, ```foo```, which takes an optional parameter, ```param = "no"``` and returns ```"yes"``` regardless of whether an argument is passed in.

-Write another method, ```bar```, which takes an optional parameter, ```param = "no"```, and returns ```"yes"``` only if no argument has been passed in or if ```"no"``` is passed in.



## =Code with Intent=



### <u>"C": Code</u>



-```bar(foo)``` will return ```"no"```. ```foo``` will always return ```"yes"```, and this ```"yes"``` object gets passed into ```bar``` as the argument. ```param``` will now point to this ```"yes"``` object. On line 6, the variable ```param``` that is scoped locally to the method will be evaluated for equality against the string ```"no"```. ```"yes" == "no"``` returns ```false```, so the object to the right of the ```:``` in the ternary operator gets returned: ```"no"```.

