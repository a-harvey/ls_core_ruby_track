# Easy 2, Question 8: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*:

​	-*Input*: A given string stored in a given initialized local variable.

​	-*Output*: The first eight words (and accompanying white space after the eighth word) of the given string, returned. The mutated given string, now containing only the last five words of the original string, will remain pointed to by the given variable. 



-*Rules*: The method ```String#slice!``` is to be used on the given variable. The substring that is passed into the method as an argument will be removed from the given string and returned. The remaining part of the original string, now mutated, will still be contained in the given initialized local variable.



-*Clarifying questions*: None.



-*Mental model*: Use the ```String#slice!``` method to return the first eight words and whitespace after the eighth word of a given string stored in a given initialized local variable.. Let that variable point to the mutated string, now holding the last five words of the initial string.



### <u>"E": Examples/Test Cases</u>



-*Example 1*: 

​	-*Input*: ```more_advice = "Don't talk with your mouth full."```

​	-*Output*: ```"Don't talk with "```



### <u>"D": Data Structure</u>



-I'll be using a String method -- ```#slice!``` -- to permanently remove the provided words and white space from a given string, returning those sliced-off parts of the string.



### <u>"A": Algorithm</u>



Permanently remove and return a given substring from a string that's stored within a given initialized local variable.



## =Code with Intent=



### <u>"C": Code</u>



Using ```String#slice!```: ```advice.slice!("Few things in life are as important as ")```



Bonus -- using ```String#slice``` on ```advice``` with the same string argument as above will also return ```"Few things in life are as important as "```, but the string stored in ```advice``` will not be mutated. 

