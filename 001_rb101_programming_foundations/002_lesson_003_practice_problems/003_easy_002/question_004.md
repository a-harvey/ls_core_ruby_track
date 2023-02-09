# Easy 2, Question 4: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*:

​	-*Input*: A given string stored in a given initialized local variable, and a given substring to search for within the given string.

​	-*Output*: A boolean object.



-*Rules*: The initialized local variable, string, and substring to search for are all given.



-*Clarifying questions*: None.



-*Mental model*: Check to see if a given string contains a given substring.



### <u>"E": Examples/Test Cases</u>



-*Example 1*: 

​	-*Input*:

```ruby
more_advice = "Don't forget to microchip your pet dinosaur."

# See if the word "microchip" appears in the string above.
```



​	-*Output*: ```true```.



### <u>"D": Data Structure</u>



-I'm given a string and asked to see if a given substring is contained within it. I can use a ```String``` method or use a Regular Expression to return a boolean object (being careful to return the case-specific "Dino").



### <u>"A": Algorithm</u>



-Check to see if a given string contains a given substring.



## =Code with Intent=



### <u>"C": Code</u>



```advice.include?("Dino")```

