# Easy 2, Question 2: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*:

​	-*Input*: A given string stored in a given initialized local variable.

​	-*Output*: The given string altered in four ways.



-*Rules*: The string, the initialized local variable it's been assigned to, and the four ways the string is to be printed out are all given. The string contained within the given variable is reset to its original form between each each alteration.



-*Clarifying questions*: Am I to assume that non-destructive methods will be used, since the original value of the string within the variable is reset between alterations?



-*Mental model*: Alter the case of a given string (stored in a given initialized local variable) in four different, given ways.



### <u>"E": Examples/Test Cases</u>



-*Example 1*:

​	-*Input*: ```addams_family_description = "The Addams Family are creepy and kooky."```

​	-*Output*: 

```ruby
# The first way:
"tHE aDDAMS fAMILY ARE CREEPY AND KOOKY."

# The second way:
"The addams family are creepy and kooky."

# The third way:
"the addams family are creepy and kooky."

# The fourth way:
"THE ADDAMS FAMILY ARE CREEPY AND KOOKY."
```



### <u>"D": Data Structure</u>



-I'll be working with ```String``` methods to print out the alterations to the given string.



### <u>"A": Algorithm</u>



-For the first way: Convert the given string so that normal capitalization -- the beginning of a sentence and proper nouns -- is made lowercase, and that lowercase characters in the original string are capitalized.



-For the second way: Convert the given string so that only the first letter of the given string is capitalized.



-For the third way: Convert the given string so that all letters are made lowercase.



-For the fourth way: Convert the given string so that all letters are made uppercase.



## =Code with Intent=



### <u>"C": Code</u>



-The first way:

```ruby
munsters_description = "The Munsters are creepy in a good way."
munsters_description.swapcase # Non-destructive
munsters_description.swapcase! # Destructive
```



-The second way:

```ruby
munsters_description = "The Munsters are creepy in a good way."
munsters_description.capitalize # Non-destructive
munsters_description.capitalize! # Destructive
```



-The third way:

```ruby
munsters_description = "The Munsters are creepy in a good way."
munsters_description.downcase # Non-destructive
munsters_description.downcase! # Destructive
```



-The fourth way:

```ruby
munsters_description = "The Munsters are creepy in a good way."
munsters_description.upcase # Non-destructive
munsters_description.upcase! # Destructive
```

