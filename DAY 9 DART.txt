COLLECTIONS:

In Dart, there are 3 types of collection data types are there. They are,

1.List []
2.Set  {}
3.Map  {'key':'value'}

All the elements in each collections must be of same DATA TYPE.

LIST:

List is an Ordered collection of elements enclosed in square brackets[] separated by commas, zero indexed and can have repeated elements.
There are some inbuilt list methods too. Such as, length, reversed, isEmpty, remove(), add(), clear(), join(), toSet(), toString() etc...

EXAMPLE:

void main()
{
 
    var list=[1,2,3,4]; //by literal

    List<int> list1=[1,2,3,4]; //the above statement is equivalent to this
 
    List list2=List.empty(growable:true);
    list2=[1,2,3,5];

    print(list);
    print(list1);
    print(list[3]);
    print(list1[2]);
    print(list.length);
    print(list.reversed);
    print(list.isEmpty);
    list.remove(3);
    print(list);
    list.add(3);
    print(list);
    print(list.join('+'));
    print(list.toSet());
    list.clear();
    print(list);
 
}



OUTPUT:

[1, 2, 3, 4]
[1, 2, 3, 4]
4
3
4
(4, 3, 2, 1)
false
[1, 2, 4]
[1, 2, 4, 3]
1+2+4+3
{1, 2, 4, 3}
[]


SET:

Set is an unordered collection of elements enclosed in curly braces{} separated by commas, and cannot have repeated elements.
There are some inbuilt set methods too. Such as, length, isEmpty, remove(), add(), clear(), join(), toList(), toString() etc...

EXAMPLE:

void main()
{
    var set1={1,2,3,4}; //by literal

    Set<int> set2={1,2,3,4}; //the above statement is equivalent to this
 
    Set set3=Set(); //by constructor
    set3={1,2,3,5};
    
    List <int> list=[1,2,3,4,4,4,4] //from list
    Set sett=Set.from(list); //sett={1,2,3,4}
    Set sett2=Set.of(list);

    var x={} --> an empty map, not a set

    print(set1);
    print(set1.length);
    print(set1.isEmpty);
    set1.remove(3);
    print(set1);
    set1.add(3);
    print(set1);
    print(set1.join('+'));
    print(set1.toList());
    set1.clear();
    print(set1);
}


OUTPUT:

{1, 2, 3, 4}
4
false
{1, 2, 4}
{1, 2, 4, 3}
1+2+4+3
[1, 2, 4, 3]
{}




MAP:

Map is a ordered key-value paired collection data type enclosed in curly braces {'key':'value'}.
The key must be unique, but values can be duplicated.
The values are accessed by using the keys.
There are some inbuilt set methods too. Such as, length, isEmpty, remove(), clear(),keys, values etc...


EXAMPLE:

void main()
{
  var map={'key1':'value1','key2':'value2','key3':'value3'}; //by literal
 
  Map<String,String> map2={'key1':'value1','key2':'value2','key3':'value3'}; //the above statement is equivalent to this
 
  Map map3=Map(); //by constructor
  map3={'key1':'value1','key2':'value2','key3':'value3'};
 
  print(map);
  print(map2);
  print(map3);
  map.remove('key2');
  print(map['key2']);
  print(map.length);
  map['key2']='NO VALUE';
  print(map['key2']);
  print('KEYS: ${map.keys}');
  print('VALUES: ${map.values}');
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


unmodifiable:

void main() {
  final set = Set.unmodifiable([1, 2, 3]);
  print('Unmodifiable Set: $set');

  final map = Map.unmodifiable({
    'name': 'Dart',
    'version': 3.9,
  });
  print('Unmodifiable Map: $map');
}

OUTPUT:

Unmodifiable Set: {1,2,3}
Unmodifiable Map: {'name': 'Dart', 'version': 3.9,}


RECORDS:

Record is also similar to collection datatype similar to tuple in python.
All the elements in each collections can be of any DATA TYPE.
IMMUTABLE.
Accessed by position or keys using $ symbol or just the key.

Eg: var record=("hello",10,20,greeting:"hi");

Here, record.$1 -> hello
      record.$2 -> 10
      record.$3 -> 20
      record.greeting ->hi

EXAMPLE-1:

void main()
{
  var rec=(greeting1:"HELLO",greeting2:"HI",1,2,3,true);
  print(rec);
  print(rec.runtimeType);
  print(rec.$1);
  print(rec.$2);
  print(rec.$3);
  print(rec.$4);
  //rec.$4=5; - ERROR Records are immutable
  print(rec.greeting1);
  print(rec.greeting2);
  print(rec.hashCode);
  print(rec.toString());
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
  var (name,age)=("Kavya", 21); //Records can also be defined this way
  print(name);
  print(age);
 
  print(display(name,age));
}
(String,int) display(name,age) //takes name and age as input and return it as a record
{
  return(name,age);
}

OUTPUT:

Kavya
21
(Kavya, 21)


Map and where Methods in List and Set:


EXAMPLE-1:

void main()
{
  var Names=["kavya","divya","bavya","gavya"];
  var nam=Names.map(makeCaps);
  print(nam);
  var namee=Names.map((s)=>s[0].toUpperCase()+s.substring(1));
  print(namee.toList());
}

String makeCaps(String s)
{
  return s[0].toUpperCase()+s.substring(1);
}

OUTPUT:

("Kavya","Divya","Bavya","Gavya")
["Kavya","Divya","Bavya","Gavya"]


EXAMPLE-2:

void main()
{
  List<int> l=[3,6,9,12];
  var li=l.map(square);
  print(li.toList());
  
  var le=l.map((i)=>i*i);
  print(le.toList());
  
}
  int square(int n)
  {
   return n*n;
  } 

OUTPUT:

[9,36,81,144]
[9,36,81,144]


EXAMPLE-3:

void main()
{
  var integ=[1,2,3,4,5,6];
  var integ2=integ.map((i)=>integfunc(i,100));
  print(integ2);
}
int integfunc(inte, integ)
{
  return inte+integ;
}

OUTPUT:

(101, 102, 103, 104, 105, 106)


EXAMPLE-4:

void main()
{
  List li=[1,2,3,4,5,6,7,8,9];
  var l=li.where((i)=>(i<5));
  print(l); 
}

OUTPUT:

(1,2,3,4)
