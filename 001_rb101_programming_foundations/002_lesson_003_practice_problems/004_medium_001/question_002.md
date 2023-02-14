# Medium 1, Question 2: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*:

​	-*Input*: A one-line code containing a ```Kernel#puts``` method call on a string literal object that is meant to concatenate with an ```Integer#+``` method call on two integers, which all produces an error.

​	-*Output*: Two revisions of the given code that don't produce errors.



-*Rules*: Two ways to resolve the given code without producing an error. The code should be in one line for each possible solution.



-*Clarifying questions*: None.



-*Mental model*: Give two possible ways to rewrite a given one-line code so that it doesn't produce errors. The code asks for the value of two integers to be added and printed to the screen.



### <u>"E": Examples/Test Cases</u>



-*Example 1*:

​	-*Input*: ```puts "the value of 25 + 5 is " + (25 + 5)```

​	-*Output*: ```30```



### <u>"D": Data Structure</u>



-The data that ```puts``` is being asked to accept as its argument takes the form of both a string object and two integers. ```puts``` outputs its given argument as a string, so the contents of its argument must either be a string or be told to be converted into a string. That is why the error is being thrown: no type conversion has been programmed to occur.



### <u>"A": Algorithm</u>



-Use one line to print out what the sum of two given integers will be.



## =Code with Intent=



### <u>"C": Code</u>



-Possibility 1:

​	```puts "the value of 40 + 2 is " (40 + 2).to_s # Invoke String#to_s on the integers```



-Possibility 2:

​	```puts "the value of 40 + 2 is #{40 + 2}" # String interpolation```


