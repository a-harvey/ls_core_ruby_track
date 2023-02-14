# Medium 1, Question 3: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*:

​	-*Input*: Any given number, including ```0``` or a negative number.

​	-*Output*: As-given: An error message if the input is ```0``` or a negative number. Intended: An array containing all of the factors of the given input number.



-*Rules*: I'm to rewrite the given method without using the given ```begin/end until``` construct. There is no need to find the factors for ```0``` or for negative numbers.



-*Clarifying questions*: Can an input number be a float?



-*Mental model*: Rewrite a given method for finding all of the factors of a given method, without using a ```begin/end until``` construct. An error message should not be thrown if the input is ```0``` or a negative number, nor should the method return an infinite loop.



### <u>"E": Examples/Test Cases</u>



-*Example 1*:

​	-*Input*: ```0```

​	-*Output*: ```[]```



*-Example 2*:

​	-*Input*: ```-2```

​	-*Output*: ```[]```



-*Example 3*:

​	-*Input*: ```300.02```

​	-*Output*: ```[1.0]```



### <u>"D": Data Structure</u>



-The data begins as an integer and is transformed into an array (specifically, an array of integers).



### <u>"A": Algorithm</u>



-Define a method ```factors``` that has one parameter: a local variable called ```number```.

​	-Initialize a variable local to the method, ```divisors```, which will contain the integer assigned to ```number```.

​	-Initialize a local variable, ```factors```, and point it to an empty array.

​	-Use a ```while``` loop so that while ```divisor > 0```:

​		-The return value of ```number / divisor``` is pushed to ```factors``` if ```number % divisor == 0```.

​		-Decrement ```divisor``` by ```1```.

​	-Return the array stored in ```factors```.



-Regarding Bonus Question #1, ```number % divisor == 0``` checks to see if the result of this equation is an integer. If a float is passed in as an argument to ```factors```, the equation will produce a value of ```0.0```, which Ruby will treat as being equal to ```0```. A value of ```1.0``` will then get passed to the array stored in ```factors```  (the result of that float being divided by itself), but the next iteration will break out of the loop as the modulo operation will return a float that does not equal ```0.0``` or ```0```.



-Regarding Bonus Question #2, the purpose of line 8 in the method (```factors```) is an explicit return, telling the method to return the array stored within ```factors```.

 

## =Code with Intent=



### <u>"C": Code</u>



```ruby
def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    if number % divisor == 0
      factors.push(number / divisor)
    end
    divisor -= 1
  end
  factors
end
```