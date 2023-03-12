# All Format Specifiers in C

|Format Specifiers | Type of Output |

|%d or %i | A decimal integer or signed integer| 

%c
	

Signed character 

%f
	

Signed float

%e
	

A floating-point number

%s 
	

A string or sequence of character 

%lf
	

double

%Lf
	

Long double 

%o

%u
	

Octal integer 

Short unsigned integer

%ld 
	

Long decimal integer

%x
	

Hexadecimal integer

%p
	

Print memory address in the hexadecimal form


# Pointer

A pointer is a variable that stores the memory address of another variable as its value. A pointer variable points to a data type (like int ) of the same type, and is created with the * operator.

Pointers are one of the things that make C stand out from other programming languages, like Python and Java. They are important in C, because they allow us to manipulate the data in the computer's memory. This can reduce the code and improve the performance.

Pointers are used extensively in both C and C++ for three main purposes: to allocate new objects on the heap, to pass functions to other functions. to iterate over elements in arrays or other data structures.

- For passing the argument by using references.
- For accessing the elements of an array(prog3).
- For dynamic memory allocation by using malloc() and calloc() functions .
- Used in arrays, functions to improve the performance of code.
- For returning multiple values(prog4).
- Implementing a data structure.
- For doing system-level programming.

What are the Features of Pointers in C?

### Following are the features of using pointers in C:

* It saves the space of memory.
* The execution time of code is faster when using a pointer since the data are manipulated by using an address, which is also used for direct access to the memory location.
* By using pointers, memory can be accessed efficiently because a pointer is used for assigning as well as releasing memory. Hence it can be concluded that the memory of the pointers is located dynamically
* It can be used with a data structure for representing two or multi-dimensional arrays.
* By using a pointer, an array of any type can be accessed.
* Has a feature for file handling.
* Can allocate memory dynamically.
* If any pointer is declared in the base class, it could access the object of the derived class, however, the opposite of that is not possible.

