###### **COLLECTIONS:**

###### 

In Dart, there are 3 types of collection data types are there. They are,



1.List \[]

2.Set  {}

3.Map  {'key':'value'}							



All the elements in each collections must be of same DATA TYPE.



**LIST:**



List is an **Ordered** collection of elements enclosed in square brackets\[] separated by commas, zero indexed and can have repeated elements.

There are some inbuilt list methods too. Such as, length, reversed, isEmpty, remove(), add(), clear(), join(), toSet(), toString() etc...



EXAMPLE:



void main()

{

&nbsp;   

&nbsp;   var list=\[1,2,3,4]; //by literal



&nbsp;   List<int> list1=\[1,2,3,4]; //the above statement is equivalent to this

&nbsp;   

&nbsp;   List list2=List.empty(growable:true);

&nbsp;   list2=\[1,2,3,5];



&nbsp;   print(list);

&nbsp;   print(list1);

&nbsp;   print(list\[3]);

&nbsp;   print(list1\[2]);

&nbsp;   print(list.length);

&nbsp;   print(list.reversed);

&nbsp;   print(list.isEmpty);

&nbsp;   list.remove(3);

&nbsp;   print(list);

&nbsp;   list.add(3);

&nbsp;   print(list);

&nbsp;   print(list.join('+'));

&nbsp;   print(list.toSet());

&nbsp;   list.clear();

&nbsp;   print(list);

&nbsp; 

}







OUTPUT:



\[1, 2, 3, 4]

\[1, 2, 3, 4]

4

3

4

(4, 3, 2, 1)

false

\[1, 2, 4]

\[1, 2, 4, 3]

1+2+4+3

{1, 2, 4, 3}

\[]





**SET:**



Set is an **unordered** collection of elements enclosed in curly braces{} separated by commas, and cannot have repeated elements.

There are some inbuilt set methods too. Such as, length, isEmpty, remove(), add(), clear(), join(), toList(), toString() etc...



EXAMPLE:



void main()

{  

&nbsp;   var set1={1,2,3,4}; //by literal



&nbsp;   Set<int> set2={1,2,3,4}; //the above statement is equivalent to this

&nbsp;

&nbsp;   Set set3=Set(); //by constructor

&nbsp;   set3={1,2,3,5};



&nbsp;   print(set1);

&nbsp;   print(set1.length);

&nbsp;   print(set1.isEmpty);

&nbsp;   set1.remove(3);

&nbsp;   print(set1);

&nbsp;   set1.add(3);

&nbsp;   print(set1);

&nbsp;   print(set1.join('+'));

&nbsp;   print(set1.toList());

&nbsp;   set1.clear();

&nbsp;   print(set1); 

}





OUTPUT:



{1, 2, 3, 4}

4

false

{1, 2, 4}

{1, 2, 4, 3}

1+2+4+3

\[1, 2, 4, 3]

{}





**MAP:**



Map is a ordered key-value paired collection data type enclosed in curly braces {'key':'value'}.

The key must be unique, but values can be duplicated. 

The values are accessed by using the keys. 

There are some inbuilt set methods too. Such as, length, isEmpty, remove(), clear(),keys, values etc...





EXAMPLE:



void main()

{

&nbsp; var map={'key1':'value1','key2':'value2','key3':'value3'}; //by literal

&nbsp; 

&nbsp; Map<String,String> map2={'key1':'value1','key2':'value2','key3':'value3'}; //the above statement is equivalent to this

&nbsp; 

&nbsp; Map map3=Map(); //by constructor

&nbsp; map3={'key1':'value1','key2':'value2','key3':'value3'}; 

&nbsp; 

&nbsp; print(map);

&nbsp; print(map2);

&nbsp; print(map3);

&nbsp; map.remove('key2');

&nbsp; print(map\['key2']);

&nbsp; print(map.length);

&nbsp; map\['key2']='NO VALUE';

&nbsp; print(map\['key2']);

&nbsp; print('KEYS: ${map.keys}');

&nbsp; print('VALUES: ${map.values}');

}



OUTPUT:



{key1: value1, key2: value2, key3: value3}

{key1: value1, key2: value2, key3: value3}

{key1: value1, key2: value2, key3: value3}

null

3

NO VALUE

KEYS: (key1, key2, key3)

VALUES: (value1, NO VALUE, value3)





###### **unmodifiable:**



void main() {

&nbsp; final set = Set.unmodifiable(\[1, 2, 3]);

&nbsp; print('Unmodifiable Set: $set');



&nbsp; final map = Map.unmodifiable({

&nbsp;   'name': 'Dart',

&nbsp;   'version': 3.9,

&nbsp; });

&nbsp; print('Unmodifiable Map: $map');

}



OUTPUT:



Unmodifiable Set: {1,2,3}

Unmodifiable Map: {'name': 'Dart', 'version': 3.9,}





###### **RECORDS:**



Record is also similar to collection datatype similar to tuple in python.

All the elements in each collections can be of any DATA TYPE.

IMMUTABLE. 

Accessed by position or keys using $ symbol or just the key.



Eg: var record=("hello",10,20,greeting:"hi");



Here, record.$1 -> hello

&nbsp;     record.$2 -> 10

&nbsp;     record.$3 -> 20

&nbsp;     record.greeting ->hi



EXAMPLE-1:



void main()

{

&nbsp; var rec=(greeting1:"HELLO",greeting2:"HI",1,2,3,true);

&nbsp; print(rec);

&nbsp; print(rec.runtimeType);

&nbsp; print(rec.$1);

&nbsp; print(rec.$2);

&nbsp; print(rec.$3);

&nbsp; print(rec.$4);

&nbsp; //rec.$4=5; - ERROR Records are immutable

&nbsp; print(rec.greeting1);

&nbsp; print(rec.greeting2);

&nbsp; print(rec.hashCode);

&nbsp; print(rec.toString());

}





OUTPUT:



(1, 2, 3, true, greeting1: HELLO, greeting2: HI)

(int, int, int, bool, {String greeting1, String greeting2})

1

2

3

true

HELLO

HI

375637527

(1, 2, 3, true, greeting1: HELLO, greeting2: HI)





EXAMPLE-2:



void main()

{

&nbsp; var (name,age)=("Kavya", 21); //Records can also be defined this way

&nbsp; print(name); 

&nbsp; print(age);

&nbsp; 

&nbsp; print(display(name,age));

}

(String,int) display(name,age) //takes name and age as input and return it as a record

{

&nbsp; return(name,age);

}



OUTPUT:



Kavya

21

(Kavya, 21)

