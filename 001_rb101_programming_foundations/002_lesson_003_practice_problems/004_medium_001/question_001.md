# Medium 1, Question 1: The PEDAC Process



## =Process the Problem=



### <u>"P": Understand the Problem</u>



-*Determine Input(s)/Output(s)*:

​	-*Input*: A given three-word string.

​	-*Output*: The given three-word string, printed 10 times, with the line indented one space further to the right with each new line.



-*Rules*: The string is given. The number of whitespaces before the string must be increased by one after the string prints, with no whitespace before the string is printed for the first time. The string will print a total of ten times. The code for this is to be written in one line.



-*Clarifying questions*: 



-*Mental model*: Use one line to create a program that will print a given string ten times. Each time the string is printed, it should be printed on a new line. After the first time the string has been printed, add one whitespace before the string is printed on the next new line. Each subsequent printing should have another whitespace character added to the front of the string.



### <u>"E": Examples/Test Cases</u>



-*Example 1*:

​	-*Input*: ```The Jetsons Rule!```

​	-*Output*:

```ruby
The Jetsons Rule!
 The Jetsons Rule!
  The Jetsons Rule!
   The Jetsons Rule!
    The Jetsons Rule!
     The Jetsons Rule!
      The Jetsons Rule!
       The Jetsons Rule!
        The Jetsons Rule!
         The Jetsons Rule!
```



### <u>"D": Data Structure</u>



-The data will begin and end as a string, but I'll need to use an ```Integer``` method to control how the data is output.



### <u>"A": Algorithm</u>



-Use one line to print out the given string ten times across new lines, adding one whitespace character to each subsequent printing. Start with 0 whitespace characters.



## =Code with Intent=



### <u>"C": Code</u>



```10.times { |num| puts (" " * num) + "The Flintstones Rock!" }```