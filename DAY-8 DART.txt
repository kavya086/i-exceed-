### 		   		**DART PROGRAMMING**

**VARIABLES:**



Variables are named memory spaces where values are stored. 

In Dart, there are 2 types of variables. They are,



1.STATIC variable:



void main()

{

&nbsp; var a=10; //inferred statically as int at compile-time

&nbsp; var b=10.9; //as double

&nbsp; var c=true; //as bool

&nbsp; var d="Dart"; //as String

&nbsp; 

&nbsp; print(a.runtimeType);

&nbsp; print(b.runtimeType);

&nbsp; print(c.runtimeType);

&nbsp; print(d.runtimeType);

}



OUTPUT:



int

double

bool

String





2.DYNAMIC variable.



void main()

{

&nbsp; dynamic a=10; //a is inferred as int first

&nbsp; print(a.runtimeType);

&nbsp; a=10.9; //a is then inferred as double

&nbsp; print(a.runtimeType);

&nbsp; a=true; //a is then inferred as boolean

&nbsp; print(a.runtimeType);

&nbsp; a="Dart"; //a is then inferred as String

&nbsp; print(a.runtimeType);

}



OUTPUT:



int

double

bool

String





**DATA TYPES:**



**1.int       -** to store integer values (without decimals) \[Values from -2^63 to 2^63 - 1]

**2.double    -** to store floating point values AND exponents(decimals)

**3.bool      -** to store boolean values (True or False)

**4.String    -** to store characters or sequence of characters (letters or words)



NOTE:



1.Keyword "var" - infers the type of the variable itself at compile-time.

1.Keyword "num" is used commonly for numbers for both int and double.

2.Keyword "float" is not used in DART.







###### **int:** 



void main()

{

&nbsp; var a=10; //a will be inferred as an integer with the value of 10

&nbsp; print(a); 

&nbsp; print(a.runtimeType); 

&nbsp; print("$a is of type ${a.runtimeType}"); //$identifier is used and ${expression} is used -> 

&nbsp; {} can be avoided if it is a identifier, {} is must if it is a expression

&nbsp; 

&nbsp; var c=10.00; //c will be inferred as an integer(not double) with the value of 10 (.00 is ignored)

&nbsp; print(c);

&nbsp; print(c.runtimeType);

&nbsp; print("$c is of type ${c.runtimeType}");

}



OUTPUT:



10

int

10 is of type int

10

int

10 is of type int



###### **double:**



void main()

{

  var a=10.990; //a will be inferred as an double with the value of 10.99

  print(a);

  print(a.runtimeType);

  print("$a is of type ${a.runtimeType}"); 



  var c=10.00; //c will be inferred as an integer(not double) with the value of 10 (.00 is ignored)

  print(c);

  print(c.runtimeType);

  print("$c is of type ${c.runtimeType}");



&nbsp; var d=1.2345E2; //c will be equal to 1.2345\*10^2 ie, 1.2345\*100 = 123.45 ,it is a double

&nbsp; print(d);

&nbsp; print(d.runtimeType);

&nbsp; print("$d is of type ${d.runtimeType}");



}



OUTPUT:



10.99

double

10.99 is of type double

10

int

10 is of type int

123.45

double

123.45 is of type double





###### **num:**



void main()

{

&nbsp; num a=10;  //int

&nbsp; num b=10.9;  //double

&nbsp; print(a.runtimeType); 

&nbsp; print(b.runtimeType);

&nbsp; 

}

&nbsp;

OUTPUT:



int

double







void main()

{

&nbsp; num a=0.1;  //double

&nbsp; num b=0.2;//double

&nbsp; 

&nbsp; num sum=a+b; //double

&nbsp; print(sum);

&nbsp; print(a.runtimeType); 

&nbsp; print(b.runtimeType);

&nbsp; print(sum.runtimeType);

&nbsp; 

}





OUTPUT:



0.30000000000000004

double

double

double





###### **bool:**





void main()

{

&nbsp; int age=20;

&nbsp; bool isAbove18;

&nbsp; 

&nbsp; isAbove18=age>18?true:false;

&nbsp; 

&nbsp; if(isAbove18)

&nbsp; {

&nbsp;   print("You are above 18");

&nbsp; }

&nbsp; else

&nbsp; {

&nbsp;   print("You are below 18");

&nbsp; }

}



OUTPUT:



You are above 18







###### **String:**



void main()

{

var s1 = 'It is a String';

var s2 = "It is also a String";

var s3 = 'It\\'s a String too with a delimiter or escape sequence';

var s4 = "It's too";

&nbsp; print("$s1 $s2 $s3 $s4");

}



OUTPUT:



It is a String It is also a String It's a String too with a delimiter or escape sequence It's too



