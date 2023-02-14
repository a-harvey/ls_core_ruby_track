# Medium 1, Question 8: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*:

​	-*Input*: Two expressions, which can be ```"rock"```, ```"paper"```, and/or ```"scissors"```.

​	-*Output*: The returned singular expression that wins the Rock Paper Scissors match, or the expression that both players played, if it's a draw.



-*Rules*: The method ```rps``` is given. It expects two arguments, stored in the parameter variables of ```fist1``` and ```fist2```, which are both scoped locally to the method. The problem to be solved is also given, containing nested ```rps``` method calls.



-*Clarifying questions*: None.



-*Mental model*: Uncover what nested calls to ```rps``` will return.



### <u>"E": Examples/Test Cases</u>



-*Example 1*:

​	-*Input*: ```"rock"``` and ```"scissors"```, which will both get passed into ```rps``` as ```fist1``` and ```fist2``` arguments, respectively.

​	-*Output*: ```"rock"```



### <u>"D": Data Structure</u>



-Data will take the form of strings, which will be evaluated against a ternary operator to determine which string expression will be returned.



### <u>"A": Algorithm</u>



-Use the order of operations to find the return values of nested ```rps``` calls and print out the result to the screen.



## =Code with Intent=



### <u>"C": Code</u>



-In the given code, ```rps``` is called four times. Working left-to-right in the two innermost calls:

1. ```rps("rock", "paper")``` will return ```"paper"```, and
2. ```rps("rock", "scissors")``` will return ```"rock"```.
3. The above two returned values (```"paper"``` and ```"rock"```) will be passed in as arguments to the ```rps``` method call that's between the outermost and two innermost ```rps``` method calls. This will return ```"paper"```.
4. Finally, the returned value from #3 above (```"paper"```) will be passed in to the outermost ```rps``` method call, taking the given string ```"rock"``` as the second argument. This will return ```"paper"```, and ```"paper"``` is what will be printed to the screen.
