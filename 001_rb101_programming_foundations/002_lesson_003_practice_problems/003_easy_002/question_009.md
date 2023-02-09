# Easy 2, Question 9: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*:

​	-*Input*: A given three-word string literal assigned to a given initialized local variable. Also given is a specific substring character to programmatically count the number of times it appears in lowercase in the given string.

​	-*Output*: An integer.



-*Rules*: The string literal, the initialized local variable that the string literal is stored in, and the character to count are all given. The code to execute this request is to fit within one line.



-*Clarifying questions*: None.



-*Mental model*: Use one line of code to determine the number of instances of a given lower-case substring letter in a given string, stored in a given initialized local variable.



### <u>"E": Examples/Test Cases</u>



-*Example 1*: 

​	-*Input*: ```another_statement = "The Jetsons are stellar!"``` and the lowercase letter ```"e"```. 

​	-*Output*: ```3```.



### <u>"D": Data Structure</u>



-I'm working with a string but will not be returning a string. Rather, I'll be returning an integer.



### <u>"A": Algorithm</u>



-Count how many times a given case-sensitive letter appears in a string, using only one line of code.



## =Code with Intent=



### <u>"C": Code</u>



```statement.count("t")```

