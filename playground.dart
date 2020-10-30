// import 'dart:core';
import 'dart:io'; // for input/output from console

class Num {
  int num = 10;
}

class Person {
  String name;
  int age;

  // Person(String name, [int age = 18]) {
  //   this.name = name;
  //   this.age = age;
  // }

  // Default constructor
  Person(this.name, [this.age = 18]); // if params name are same as member vars

  // named constructor
  Person.guest() {
    name = 'Guest';
    age = 15;
  }

  void showOutput() {
    print('Name: ' + name);
    print('Age: ' + age.toString());
  }
}

class X {
  /*
    final cann be assigned in constructor but const can't be
   */

  final name; // type will be defined by inferred value
  static const int age = 10;

  X(this.name);
}

class Vehicle {
  String model;
  int year;

  Vehicle(this.model, this.year) {
    print(this.model);
    print(this.year);
  }

  void showOutput() {
    print(model);
    print(year);
  }
}

class Car extends Vehicle {
  double price;

  Car(String model, int year, this.price) : super(model, year);

  void showOutput() {
    super.showOutput();
    print(this.price);
  }
}

class A {
  String name;

  A(this.name);

  void showOutput() {
    print(this.name);
  }

  dynamic square(dynamic val) {
    return val * val;
  }
}

class B extends A {
  B(String name) : super(name);

  @override
  void showOutput() {
    print(this.name);
    print('Hello');
  }

  dynamic square(dynamic val) {
    return val + val;
  }
}

class Rectangle {
  num left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  // Define two calculated properties: right and bottom
  num get right => left + width;
  set right(num value) => left = value - width;
  num get bottom => top + height;
  set bottom(num value) => top = value - height;
}

void main() {
  // printing to console
  print("Hello World!");

  var firstName = "John"; // automatically gets that it is string
  String lastName = "Doe";

  print(firstName + " " + lastName);

  stdout.writeln("What is your name ?");
  // reading from console
  String name = stdin.readLineSync();
  print('My name is $name');

  // single line
  /*
    multi line
   */
  /// Documentation

  int amount1 = 100;
  int amount2 = 200;

  print("Amount1: $amount1 | Amount2: $amount2 \n");

  double dAmount1 = 100.11;
  var dAmount2 = 200.22;

  print("dAmount1: $dAmount1 | dAmount2: $dAmount2 \n");

  String name1 = 'John';
  var name2 = 'Doe';

  print('My name is $name1 $name2');

  bool isTrue1 = true;
  var isTrue2 = false;

  print('isTrue1: $isTrue1 | isTrue2: $isTrue2 \n');

  dynamic weakVariable = 100;
  print('WeakVariable 1: $weakVariable \n');

  weakVariable = 'Dart programming.';
  print('WeakVariable 2: $weakVariable');

  weakVariable = null;
  print(weakVariable);

  var s1 = 'Single quotes work well for string literals';
  var s2 = "Double quotes work just as well";
  var s3 = 'It\'s easy to escape the string delimiter';
  var s4 = "It's even easier to use the other delimiter";

  print(s1);
  print(s2);
  print(s3);
  print(s4);

  // RAW String
  var s = r'In a raw string, not even \n gets special treatment';
  print(s);

  var age = 35;
  var str = 'My age is $age';
  print(str);

  var ms1 = '''
  We can create multi-line
  strings like this''';

  print(ms1);

  // String -> int
  var one = int.parse('1');
  assert(one == 1);

  // String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

  // int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

  // double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');

  const aConstNum = 0; // int constant
  const aConstBool = true; // bool constant
  const aConstString = 'a constant string';

  print(aConstNum);
  print(aConstBool);
  print(aConstString);

  print(aConstNum.runtimeType);
  print(aConstBool.runtimeType);
  print(aConstString.runtimeType);

  int numNull;
  print(numNull); // value will be null

  int num = 10 + 22;
  num = num - 2;

  print(num);
  num = num % 5;

  print(num);

  // relational operators ==, !=, >=, <=
  if (num == 0) {
    print('Zero');
  }

  num = 100;
  num *= 2;
  print(num);

  // unary operator
  ++num;
  num++;
  num += 1;
  num -= 1;
  print(num);

  // logical && ||
  if (2 > 0 && 9 < 15) {
    print('True condition');
  }

  // Null aware operator
  // (?.) (??) (??=)
  var n = Num();
  int number;

  // if (n != null) {
  //   number = n.num;
  // }

  number = n?.num; // if n is not null then access the property on it
  print(number);

  number = n?.num ??
      0; // if n is not null then access the property on it otherwise assign the default value i.e: 0 to number

  number = null;

  print(number ??= 100); // if number is null then assign a value 100 to it

  // Ternary operator
  var x = 100;
  var result = x % 2 == 0 ? 'Even' : 'Odd';
  print(result);

  // Type testing
  if (x is int) {
    print('x is integer!');
  }

  // Conditional statements
  if (x % 2 == 0) {
    print('Even!');
  } else if (num % 3 == 0) {
    print('Odd');
  } else {
    print('confused!');
  }

  switch (x) {
    case 0:
      print('Even');
      break;
    case 1:
      print('Odd');
      break;
    default:
      print('Confused!');
      break;
  }

  // Loops
  // Standard for loop
  for (var i = 0; i < 5; i++) {
    print(i);
  }

  // for in loop
  var numbers = [1, 2, 3];
  for (var n in numbers) {
    print(n);
  }

  // forEach loop
  numbers.forEach((element) => print(element));

  // while loop
  num = 5;
  while (num > 0) {
    print(num);
    --num;
  }

  // do while
  num = 5;
  do {
    print(num);
    num -= 1;
  } while (num > 0);

  // Lists
  List mixed = ['Jack', 'Jill', 15, 20, true]; // we can also use var
  List<String> names = const ['John', 'Doe'];
  print(names[0]);
  print(names.length);

  for (var elem in mixed) {
    print(elem);
  }

  // names[1] = 'Mark'; //!Error: as list is marked as const
  // copying list
  List names2 = [...names];

  for (var name in names2) {
    print(name);
  }

  // Sets
  var halogens = {'flourine', 'chlorine', 'flourine'};
  var linkedHashMap = {};
  var stringHashSet = <String>{};

  print(linkedHashMap.runtimeType);
  print(stringHashSet.runtimeType);

  for (var x in halogens) {
    print(x);
  }

  Set<String> stringSet = {};

  // Map
  var gifts = {
    // key : value
    'first': 'Macbook Pro',
    'second': 'Iphone 12',
    'third': 'IMac 2020'
  };

  print(gifts['second']);
  print(gifts[2]);

  var gifts2 = Map();
  gifts2['one'] = 'Cycle';

  // function
  print(square.runtimeType);
  showOutput("Hello world $square(3)");

  names = ['Hasham', 'John', 'Jack', 'Mike'];
  names.forEach((element) {
    print(element);
  });

  print(sum(10, num2: 4, num1: 3));

  // Classes
  Person person1 = Person('Harry', 25);
  person1.showOutput();

  // person1.name = 'Harry';
  // person1.age = 25;
  // person1.showOutput();

  var person2 = Person('Jack', 35);
  person2.showOutput();

  var person3 = Person.guest();
  person3.showOutput();

  var obj = X('Freezed!!');
  print(obj.name);

  //obj.name = 'Jill'; //!Error: name can't be changed!!

  print(X.age); // accessing class property

  // outside a class final and const behaves the same
  final unChangeable = 'Hasham';
  const constant = 30;

  print(unChangeable);
  print(constant);

  var rect = Rectangle(3, 4, 20, 15);
  print(rect.left);

  rect.right = 12;
  print(rect.left);

  // Exception handling
  letVerifyTheValue(10);
  letVerifyTheValue(0);
}

dynamic square(var num) => num * num;

void showOutput(var msg) {
  print(msg);
}

dynamic sum(var someOther, {var num1 = 0, var num2 = 0}) =>
    num1 ??= 0 + num2 + someOther;

void function(var must, [var optional = 3]) {
  print(must + " " + optional);
}

int mustGreateThanZero(int val) {
  if (val <= 0) {
    throw Exception('Value must be greate than zero');
  }
  return val;
}

void letVerifyTheValue(var val) {
  var valueVerification;

  try {
    valueVerification = mustGreateThanZero(val);
  } catch (e) {
    print(e);
  } finally {
    if (valueVerification == null) {
      print('Value is not accepted');
    } else {
      print('Value verified: $valueVerification');
    }
  }
}
