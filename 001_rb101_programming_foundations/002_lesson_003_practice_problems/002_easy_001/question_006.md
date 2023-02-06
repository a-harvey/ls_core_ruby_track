# Easy 1, Question 6: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*:

​	-*Input*: ```famous_words = "seven years ago..."```

​	-*Output*: ```famous_words = "Four score and seven years ago..."```



-*Rules*: The second half of the given quote is stored in a given initialized local variable, and the first half of the given quote is provided so that it can be placed before the second half.



-*Clarifying questions*: Is the expectation that the given string be mutated? Is ```famous_words``` reset between the execution of the first change and the second change?



-*Mental model*: Find two ways to add "Four score and " to the given string ```"seven years ago"```, pointed to by the given initialized local variable, ```famous_words```.



### <u>"E": Examples/Test Cases</u>



-*Example 1*: 

​	-*Input*: ```another_quote = "one giant leap for mankind."``` and a string: ```"One small step for man, "	```.

​	-*Output*: ```another_quote = "One small step for man, one giant leap for mankind."```



### <u>"D": Data Structure</u>



-I'll be working with strings and two different ```String``` methods. I want to return a string as well.



### <u>"A": Algorithm</u>



-One way: Use the shovel operator to add the new string to the front of the given string stored in ```famous_words```.

-Another way: Initialize a new variable, ```famous_words_beginning``` and point it to the new string. Pass ```famous_words_beginning``` as an argument to a ```String``` method that is invoked on ```famous_words``` in order to add the new string to the front of ```famous_words```.



## =Code with Intent=



### <u>"C": Code</u>

-One way:

```ruby
famous_words = "seven years ago..."
"Four score and " << famous_words
```



-Another way:

```ruby
famous_words = "seven years ago..."
famous_words_beginning = "Four score and "

famous_words.prepend(famous_words_start)
```

