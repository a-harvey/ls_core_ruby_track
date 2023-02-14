# Medium 1, Question 4: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*:

​	-*Input*: A given array and new given elements added to it.

​	-*Output*: The given array with the oldest elements removed and the the newest elements added, once the array reaches a set element-limit.



-*Rules*: Examine the two method definitions that Alyssa provided and determine if there is a difference between them beyond the choice of the concatenation operator.



-*Clarifying questions*: None.



-*Mental model*: Evaluate two given methods and see if there's a difference in their functionality beyond the concatenation operator used to add an element to the given array. Once the array element-size reaches a given limit, the array's oldest elements will be removed and the newest elements will be added.



### <u>"E": Examples/Test Cases</u>



-*Example 1*: 

​	-*Input*: A new element, ```"hi"``` added to a full array called ```greetings```, which is limited to four greetings stored as string objects. The first element in the array -- the "oldest" -- is ```"hello"```.

​	-*Output*: A new array pointed to by ```greetings```, which will no longer contain ```"hello"``` but will contain ```"hi"```.



### <u>"D": Data Structure</u>



-Elements may be passed into the given method in any data type, creating a mixed-type array. When an element is removed, the program will return it in the form of its original data type unless an explicit return call is made as the last line of the method.



### <u>"A": Algorithm</u>



-Create a method that stores given elements into an array. A new element can be added into this array, but if the array exceeds the given threshold size, the oldest element must be removed. Return the array.



## =Code with Intent=



### <u>"C": Code</u>



-In looking at Alyssa's code, both methods will return the same thing (an array).

 

The first method, ```rolling_buffer1```, will mutate the array that is passed into it and stored in the variable ```buffer``` that is initialized at the method scope. The second method, ```rolling_buffer2```, will not mutate the array that is passed into it which is stored in the method's local variable, ```input_array```. This is because a new addition to ```input_array``` in the form of ```[new_element]``` will be stored in the variable ```buffer```, which has been initialized within ```rolling_buffer2```. Instead, a new array will be returned.



```rolling_buffer2``` also uses ```[]``` around ```new_element``` to convert ```new_element``` into an array element so that the the ```+``` operator can concatenate it into ```input_array``` without throwing an error. ```rolling_buffer1``` uses the ```<<``` operator, which converts ```new_element``` into an array element.
