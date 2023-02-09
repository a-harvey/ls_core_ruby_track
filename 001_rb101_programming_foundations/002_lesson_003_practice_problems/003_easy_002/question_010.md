# Easy 2, Question 10: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*:

​	-*Input*: A given initialized local variable, ```title``` pointing to a string literal. There is a table of names that are mentioned but not given; this table is 40 characters wide.

​	-*Output*: The string contents of the ```title``` variable centered above the table, including spaces.



-*Rules*: The initialized local variable and the string literal object it contains are both given. This string is to be centered above an alluded-to table that is 40 characters wide, padded with spaces on either side.



-*Clarifying questions*: None.



-*Mental model*: Center with spaces a given string stored in a given initialized local variable above a table that is 40 characters wide.



### <u>"E": Examples/Test Cases</u>



-*Example 1*: 

​	-*Input*: ```another_title: "Jetsons Family Members"```

​	-*Output*: ```"Jetsons Family Members" # centered above a 40-character-wide table```



### <u>"D": Data Structure</u>



-I'll be working with a ```String``` method.



### <u>"A": Algorithm</u>



-Pad a given string with spaces on either side so that it's centered above a given table.



## =Code with Intent=



### <u>"C": Code</u>



```title.center(40)```

