# Hard 1, Question 4: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*:

​	-*Input*: A string object.

​	-*Output*: A boolean object.



-*Rules*: An IP address contains dot-separated numbers (e.g., "10.4.5.11"). Alyssa has supplied a method to Ben called ```is_an_ip_number?``` which determines if a string is a numeric string between ```0``` and ```255```, which is required for IP numbers. The code should return a ```true``` or ```false``` condition. There should be exactly four components to the IP address (i.e., there should be three dots).



-*Clarifying questions*: The problem states that Ben "is not familiar with regular expressions." Am I to take from this that the problem is asking for a non-regex solution, or am I just to understand that Ben's code was a result of an unfamiliarity with regexes?



-*Mental model*: Ben needs help fixing his code: a method he's written called ```dot_separated_ip_address?```. Alyssa has given him a method called ```is_an_ip_number?``` which returns ```true``` or ```false``` based on the argument that is passed to it. The object passed to this method should be a numeric string between ```0``` and ```255```, with three dot separations. Ben is unfamiliar with regular expressions.



### <u>"E": Examples/Test Cases</u>



-*Example 1*:

​	-*Input*: ```0```

​	-*Output*: ```false```



-*Example 2*:

​	-*Input*: ```0.0.0.0```

​	-*Output*: ```true```



-*Example 3*:

​	-*Input*: ```"hello"```

​	-*Output*: ```false```



-*Example 4*:

​	-*Input*: ```-1.15.2.255```

​	-*Output*: ```false```



-*Example 1*:

​	-*Input*: ```256.256.256.256```

​	-*Output*: ```false```



### <u>"D": Data Structure</u>



-Input is given as either a numeric string. The method ```dot_separated_ip_address?``` as given uses ```String#split``` to store substrings as elements of an array.  ```is_an_ip_number?``` will return ```true``` or ```false``` based on whether the argument passed to it is a numeric string that meets the conditions Alyssa provided. ```dot_separated_ip_address?``` will return ```true``` or ```false``` based on whether the input string is an IP address that contains dot-separated numbers of no less or more than four components.



### <u>"A": Algorithm</u>



-Write a method, ```dot_separated_ip_address?```, which defines a numeric string object as its parameter:

​	-Separate the string at the dots, storing the numeric string chunks as elements of an array that is pointed to by a method-scoped local variable: ```dot_separated_words```.

​	-Declare an ```if/else``` condition:

​		-```if``` the number of elements in the ```dot_separated_words``` array is not equal to ```4```, ```return false```.

​		-```else``` ```while``` the number of elements in the ```dot_separated_words``` array is greater than ```0```:

​			-Remove each element from ```dot_separated_words``` individually and store the element in a local variable, ```word```.

​			-Using the given ```is_an_ip_number?``` method, pass in ```word``` as an argument and ```return false``` if ```is_an_ip_number?``` returns ```false```.

​	-```return true```.



## =Code with Intent=



### <u>"C": Code</u>



```ruby
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  
  if dot_separated_words.size != 4
    return false
  else
    while dot_separated_words.size > 0 do
      word = dot_separated_words.pop
      return false unless is_an_ip_number?(word)
    end
  end

  true
end
```

