int _secret = 123; // accessible only inside this file

void main() {
  // Types of Variables
  // Type of the variable can be among:

  // Static Variable
  // Dynamic Variable
  // Final or const

  int age = 23;

  //   bool isStudent = true;

  String name = "Murtaza";

  print("My name is ${name} and my age is ${age}");

  // Var and Dynamic

  var n = 10;
  //n = "abc" // ❌ Compile-time error

  dynamic dyn = 20;
  dyn = "abc"; // ✅ Allowed
  dyn = true; // ✅ Allowed

  // Difference between final const is that final is run time constant and const is compile time is constant

  final String myName = "Murtaza"; // runtime constant
  const double pi = 3.14; // compile-time constant

  print("$myName $pi");

  // Null Safety in Dart and How to assign null value to variable in Dart?

  int? a = 10;
  a = null;
  print(a);

  int? nullNum;
  print(nullNum);

  // "is" operator in dart

  print(name is String);
  print(name! is String);

  // Ternary Operator

  dynamic isEligible = age > 18 ? "Eligible" : "Not Eligible";
  print(isEligible);

  print(isEligible);

  // Lists in Dart

  var nums = [1, 2, 3, 4]; // Type int and growable
  nums.add(99);
  print(nums);

  var mixed = [1, false, "abc"]; // Type object and growable
  print(mixed);

  var emptyList = []; // Type dynamic and growable
  print(emptyList);

  List<int> emptyList_2 = []; // Type int and growable
  print(emptyList_2);

  var str = List<String>.empty(growable: true); // Type String and growable
  print(str);

  // Common List Methods

  print(nums);
  nums.add(40); // add single element
  print(nums);

  nums.addAll([50, 60]); // add multiple
  print(nums);

  nums.insert(1, 15); // insert at index
  print(nums);

  nums.remove(99); // remove value
  print(nums);

  nums.removeAt(0); // remove by index
  print(nums);

  nums.removeLast(); // remove last element
  print(nums);

  nums.clear(); // empty the list
  print(nums);

  // Sets in Dart

  var s = {1, 2, 3, 4, 5};
  print(s);

  Set<int> s2 = {11, 22, 33, 44};
  print(s2);

  Set<Object> s3 = {
    true,
    99,
    [1, 2, 3],
  };

  print(s3);

  var emptySet = <int>{};
  print(emptySet);

  // For primitive types (int, double, bool, String), the value is the actual data → behaves like "pass by value".

  // For collections & objects (List, Set, Map, custom classes), the value is the reference → behaves like "pass by reference".
}
