# Medium 2, Question 1: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*:

​	-*Input*:

```ruby
a = "forty two"
b = "forty two"
c = a

# Call Object#object_id on each of these and print the result.
```



​	-*Output*: The printed ```object_id``` of ```a``` and ```c``` will be the same. ```b```'s printed```object_id``` will be different.



-*Rules*: The variables ```a```, ```b```, and ```c``` are all given, as are the objects that the three variables point to: ```a``` and ```b``` point to a given string, and ```c``` points to ```a```. ```puts``` is to be called on each of the variables, which are each invoking the ```object_id``` method.



-*Clarifying questions*: None.



-*Mental model*: Determine what the output of invoking the ```object_id``` method on three variables, ```a```, ```b```, and ```c``` will be. ```a``` and ```b``` both point to the string object ```forty-two```, and ```c``` points to ```a```.



### <u>"E": Examples/Test Cases</u>



-*Example 1*:

​	-*Input*: 

```ruby
d = "forty-three"
e = "forty-four"
f = d
```



​	-*Output*: The ```object_id``` for ```d``` and ```f``` will be the same. ```e```'s will be different.



### <u>"D": Data Structure</u>



-The string objects that both ```a``` and ```b``` point to, ```"forty two"```, are stored in different places within memory, despite appearing to be the same object. Each object has an ```object_id``` given to it, which is what is printed.



### <u>"A": Algorithm</u>



-Initialize three local variables, ```a```, ```b```, and ```c```:

​	-Point ```a``` and ```b``` to string objects of the same value but that will be stored in different locations in memory.

​	-Point ```c``` to the same object that ```a``` points to.

-Print out the ```object_id``` of each of the three variables.



## =Code with Intent=



### <u>"C": Code</u>



-```a``` and ```b``` are both pointing to different objects, despite the objects sharing the same name: the string expression ```"forty two"```. In assigning ```c``` to ```a```, ```c``` is really pointing at the object that ```a``` is pointing at. If the object that ```a``` is pointing to changes, then ```a``` will point to a new object (with a new ```object_id```), but ```c``` will continue to point to the object that ```a``` initially pointed to, and will retain the same ```object_id```.

