# Medium 2, Question 2: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*:

​	-*Input*:

```ruby
a = 42
b = 42
c = a
```



​	-*Output*: ```a```, ```b```, and ```c``` will all return the same ```object_id```.



-*Rules*: The local initialized variables ```a```, ```b```, and ```c``` are all given, as well as the values they point to: ```a``` and ```b``` both point to the integer ```42```, and ```c``` points to ```a```.



-*Clarifying questions*: None.



-*Mental model*: Print out the ```object_id``` of three variables, ```a```, ```b```, and ```c```, when ```a``` and ```b``` both point to ```42``` and  ```c``` points to ```a```.



### <u>"E": Examples/Test Cases</u>



-*Example 1*:

​	-*Input*: 

```ruby
d = 43
e = 43
f = d
```



​	-*Output*: All three variables -- ```d```, ```e```, and ```f``` -- will share the same ```object_id```.



### <u>"D": Data Structure</u>



-The objects that ```a``` and ```b``` explicitly point to are integers. The variable ```c``` is initialized and points to ```a```.



### <u>"A": Algorithm</u>



-Initialize three local variables: ```a```, ```b```, and ```c```:

​	-Point ```a``` and ```b``` to the integer ```42```.

​	-Point ```c``` to ```a```.

-Print out the result of calling ```object_id``` on ```a```, ```b```, and ```c```.



## =Code with Intent=



### <u>"C": Code</u>



-Invoking the ```object_id``` method on ```a```, ```b```, and ```c``` and printing out the results will reveal that each have the same ```object_id```. ```42``` is an integer and has an ```object_id``` that can't be changed, like all integers (and floats).

