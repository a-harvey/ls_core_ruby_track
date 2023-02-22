# Hard 1, Question 2: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*:

​	-*Input*: A given initialized local variable, ```greetings```, pointing to a hash that contains the symbol ```a:``` as its sole key and the string ```"hi"``` as its sole value.

​	-*Output*: ```{ :a=>"hi there"}```



-*Rules*: The hash with its one key-value pair is given, and so is the initialized local variable ```greetings``` that points to it. Another local variable, ```informal_greeting```, is initialized and pointed to the result of calling ```greetings[:a]```. Also given is the expression ```informal_greeting << " there"```. The ```Kernel#puts``` method is also given, twice. The problem question is focused on the last given line of the code.



-*Clarifying questions*: None.



-*Mental model*: Decide what the last line of the given code will print when ```puts``` is invoked on ```greetings```, a local variable that's been initialized to point to a hash containing one key-value pair. Determine if lines 2-4 will mutate ```greetings```.



### <u>"E": Examples/Test Cases</u>



-*Example 1*:

​	-*Input*: ```greetings = { a: 0 }```

​	-*Output*: ```TypeError (no implicit conversion of String into Integer)```



-*Example 2*:

​	-*Input*: ```greetings = { a: "hello" }```

​	-*Output*: ```{:a=>"hello there"}```



### <u>"D": Data Structure</u>



-The hash pointed to by ```greetings``` will retain its ```object_id``` and so will its key-value pair elements. The value element will be mutated, though, due to line 3 of the code.



### <u>"A": Algorithm</u>



-Initialize a local variable, ```greetings```, and point it toward a hash containing one key-value pair: a symbol for the former, and a string for the latter.

-Initialize a local variable, ```informal_greeting```, and point it to the value contained within the key-value pair assigned to ```greetings```.

-Append a string to the string object pointed to by ```informal_greeting```.

-Print the result of referencing ```informal_greeting```.

-Print the result of referencing ```greetings```.



## =Code with Intent=



### <u>"C": Code</u>



-```greetings``` has been mutated due to the shovel operator being used in line 3 to append ```" there"``` to ```informal_greeting```. Both the string object pointed to by ```greetings[:a]``` and ```informal_greeting``` share the same ```object_id```.

