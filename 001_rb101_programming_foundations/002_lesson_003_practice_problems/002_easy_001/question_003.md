# Easy 1, Question 3: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*:

​	-*Input*: A string stored in a local initialized variable.

​	-*Output*: The original string, mutated, assigned to the same variable.



-*Rules*: The string, local variable, and substitution to be made are all provided.



-*Clarifying questions*:  Can I assume that the case of the word to be replaced appears exactly as suggested?



-*Mental model*: Take the word "important" out of a given string and replace it with the word "urgent".



### <u>"E": Examples/Test Cases</u>



-*Example 1*: 

​	-*Input*: ```example_string = "Hello, it's good to meet you."```

​	-*Output*: ```example_string = "Hello, it's great to meet you."```



### <u>"D": Data Structure</u>



-I need to mutate a given string and store it to the same variable, ```advice```, that's been given. I'll need to use a ```String``` method that mutates only the given word.



### <u>"A": Algorithm</u>



-Call a substitution instance method from the ```String``` class on the ```advice``` variable that will mutate the string which ```advice``` points to. Do not return a new string.



## =Code with Intent=



### <u>"C": Code</u>

```ruby
advice.gsub!("important", "urgent")
```

