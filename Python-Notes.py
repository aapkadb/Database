#Shortcuts
Ctrl + /  (Command + /) -- To Comment Multiple lines of code
Alt + Up Arrow (Option + Up Arrow) -- To Move line of code Up
Alt + Down Arrow (Option + Down Arrow) -- To Move line of code Down
Alt + Shift + Up Arrow (Option + Shift + Up Arrow) - Copy the Line above
Alt + Shift + Down Arrow (Option + Shift + Down Arrow) - Copy the Line below


-- Day 1
1. Introduction
REPL - Read Evaluate Print Loop
Guido van Rossum - 1989,1991

{
print("Hello World")
}

-- Day 2
Build Snake Game

-- Day 3
Module - It is a library which can be used to borrow the code written by
somebody else in our python program. There are two types of modules in Python
1- Build In Module 
2- External Module

PIP - It can be used as a package manager pip to install a python module.
( pip install pandas )

scikit-learn {For Machine Learning}, pandas [For Data Analytics]
Check little bit documententaion about the module/package you install to get 
to know more

{
import pandas
#Read and word with a file 'word'
pandas.read.csv('word.csv')
}

-- Day 4
{
print("Hello") or print('Hello')
print("Hello World's")
print('Hello World\'s')
print("Hello World","Check",sep=' - ',)

print(5)
print(2.23)
print(False)
}
  
-- Day 5
Integers (int) and floating point numbers (float) can be converted to strings (str) using str()
{
i = 100
s_i = str(i)

f = 0.123
s_f = str(f)
}
To convert a value to a string in a specific format, use the built-in format() function.

print (*values: object, sep: str | None = " ", end: str | None = "\n", file: SupportsWrite[str] | None = None, flush: Literal[False] = False) -> None
Prints the values to a stream, or to sys.stdout by default.

sep
  string inserted between values, default a space.
end
  string appended after the last value, default a newline.
file
  a file-like object (stream); defaults to the current sys.stdout.
flush
  whether to forcibly flush the stream.
  
-- Day 6
Variable is like a container that holds data of different Data Types.
It store value in RAM.
#Example File of variables
# Data Type: Numbers, Strings, Booleans, Sequence, Dictionaries
List, Tuple, Dictionary
{
a=1  #Integer Data Type
b=2  #Integer Data Type
c='Umang'  #String Data Type
d=3.41  #Float Data Type
e=True  #Boolean Data Type
list1=[1,2,[a,b],["Apple","Banana"]]
tuple1=(("Tea","Coffe"),("Idli","Dosa"))
dict1={"name":"Test","key":"value"}
print(a+b)
print(c)
print(d)
print(e)
print(type(c))
print(type(d))
print(list1)
print(tuple1)
print(dict1)
print(type(list1))
print(type(tuple1))
print(type(dict1))
}

-- Day 7
Operator - Addition, Substraction, Multiplication, Division, Exponential,Modulas
Floor, Ceiling, Floor Division

{
a=10
b=6
addition= a+b
substraction= a-b
multiplication= a*b
division= a/b
modulas= a%b
floordivision= a//b
exponential= a**b
print("Addition(+) of",a,"and",b,"is",addition)
print("Substraction(-) of",a,"and",b,"is",substraction)
print("Multiple(*) of",a,"and",b,"is",multiplication)
print("Division(/) of",a,"and",b,"is",division)
print("Modulas(%) of",a,"and",b,"is",modulas)
print("Floor Division(//) of",a,"and",b,"is",floordivision)
print("Exponentail(**) of",a,"and",b,"is",exponential)
}

-- Day 8
Solution for Calculation

-- Day 9
Type Casting is the conversion of one Data Type to another. There are 
two types of type casting
Explicit - Done by developer
Implicit - Done by the Python itself
int(),str(),ord(),hex(),tuple(),set(),list(),dict(),float(),oct()
Python converts smaller data types to higher data types to prevent Data Loss

{
a='3'
b='6'
print(int(a)+int(b))

c=4
print(type(c))
d=5.65
print(type(d))
e=c+d
print(e)
print(type(e))
}

-- Day 10
We take User input using input function. The Input function retunr value as
string/character hence we pass it into variable.
{
name = input("What is your Name? ")
print("Hello",name)

x=input("Enter First Number: ")
y=input("Enter Second Number: ")
z=int(x)+int(y)
print("Sum of",x,"and",y,"=",z)
}

-- Day 11
In Python string is like a array of characters. We can access parts of
string by using its index which starts from 0.

{
a="123"
print("Test",a[0])
print("Test" + a[1])
# print("Test" + a[3]) # IndexError: string index out of range
for character in a:
    print(character)
}

-- Day 12
Slicing of the String. 
{
names="Umang,Shukla,BTech"
print("First Name:",names[0:5],"\nLast Name:",names[6:12],"\nDegree:",names[13:18])
# print("First Name:",names[:5],"Last Name:",names[6:12],"Degree:",names[13:])
print(names[0:5])  #Including 0 but not 5
print(names[0:-5])
print(names[0:len(names)-5])
print(names[-5:len(names)-2])
print(names[len(names)-5:len(names)-2])
print(len(names))  #Lenth of the String
}

-- Day 13
Methods and Operations of the String
upper(),lower(),lstrip(),rstrip(),strip(),replace(),split(),
capitalize(),center()
Strings are Immutable it is not changed only we use them and print
a completely new string with UPPER, lower and other function
Split method splits the given string all the specified instance and return
the separated string as list items
Capatilize convert the first character to UPPER and other to lower case
Center methnod aligns the string to the center as per the parameter
given by users.

{

}