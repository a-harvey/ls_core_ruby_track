# Medium 1, Question 5: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*:

​	-*Input*: Two numbers passed in as arguments to a Fibonacci sequence calculator method.

​	-*Output*: A number representing the final -- as defined by a given limit -- sum of the iterations of the two numbers, with each iteration through the sequence outputting the sum of its two previous iterations.



-*Rules*: The problem points to an issue with the ```limit``` variable in Ben's code.



-*Clarifying questions*: None.



-*Mental model*: Study the given code about a Fibonacci calculator, particularly the ```limit``` variable that Ben initialized in line 1, and determine why an error is thrown when the code is run.



### <u>"E": Examples/Test Cases</u>



-*Example 1*:

​	-*Input*: ```0``` and ```1``` for the first and second numbers, respectively. ```15``` for the iteration limit.

​	-*Output*:  ```13```



### <u>"D": Data Structure</u>



-The numbers supplied for ```first_num``` and ```second_num``` can be floats or integers. ```sum``` will store a float if either ```first_num``` or ```second_num``` are floats. 



### <u>"A": Algorithm</u>



-Write a Fibonacci calculator method without using a ```while``` loop and without recursive method calls. The user should be able to set a threshold number to measure ```first_num + second_num``` against.



## =Code with Intent=



### <u>"C": Code</u>



-If the user wants to be able to change the threshold set by ```limit```, then ```limit``` should be set as  an additional parameter to ```fib```:

```ruby
limit = 15

def fib(first_num, second_num, threshold)
  while first_num + second_num < threshold
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"
```



-If the number assigned to ```limit``` is to be fixed at ```15```, then the following two solutions could apply:

```ruby
# OPTION 1:

LIMIT = 15 # set this as a constant

def fib(first_num, second_num, threshold)
  while first_num + second_num < threshold
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, LIMIT)
puts "result is #{result}"

# OPTION 2:

def fib(first_num, second_num)
  limit = 15
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"
```

