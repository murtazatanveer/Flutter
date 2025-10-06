// Question No 1

class person {
  String? _name;
  int? _age;

  person(this._name, this._age);

  set age(int age) => this._age = age;
  set name(String name) => this._name = name;

  int? get age => _age;
  String? get name => _name;
}

class employee extends person {
  int? _salary;

  employee(String name, int age, this._salary) : super(name, age);
}

// Question No 5

class animal {
  void speak() {
    print("Animal Speaking");
  }
}

class cat extends animal {
  @override
  void speak() {
    print("Cat says: Meow! Meow!");
  }
}

class dog extends animal {
  @override
  void speak() {
    print("Dog says: Woof! Woof!");
  }
}

// Question No 6

class shape {
  double area() {
    print("Calculating Area");
    return 0;
  }
}

class rectangle extends shape {
  double length;
  double width;

  rectangle(this.length, this.width);

  @override
  double area() {
    return length * width;
  }
}

class circle extends shape {
  double radius;

  circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

// Q7: Complex Number with Operator Overloading

class ComplexNumber {
  double real;
  double imaginary;

  // Constructor
  ComplexNumber(this.real, this.imaginary);

  // 🔹 Overload '+' operator
  ComplexNumber operator +(ComplexNumber other) {
    return ComplexNumber(
      this.real + other.real,
      this.imaginary + other.imaginary,
    );
  }

  // 🔹 Override toString() for formatted printing
  @override
  String toString() {
    String sign = imaginary >= 0 ? '+' : '-';
    return '$real $sign ${imaginary.abs()}i';
  }
}

void main() {
  // Question No 3

  var map1 = {1: "one", 2: "two", 3: "three"};
  var map2 = {4: "four", 5: "five"};

  map1.addAll(map2);

  print(map1);

  cat c = cat();
  c.speak();

  dog d = dog();
  d.speak();

  ComplexNumber c1 = ComplexNumber(3, 4);
  ComplexNumber c2 = ComplexNumber(2, 5);

  ComplexNumber result = c1 + c2;

  print("(${c1}) + (${c2}) = ${result}");

  // add four elements to products and call search product and sotr products by price
  products p = products();
  p.addProduct("Laptop", 1000, 5);
  p.addProduct("Smartphone", 700, 10);
  p.addProduct("Tablet", 300, 7);
  p.addProduct("Headphones", 150, 15);
  p.searchProduct("Tablet");
  p.sortProductsByPrice();

  // create a list of numbers and call filter odd numbers
  NumberFilter nf = NumberFilter();
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> evenNumbers = nf.filterOddNumbers(numbers);
  print(evenNumbers);
}

// Question No 2

class products {
  List<Map<String, Object>>? productList;

  products() {
    productList = [];
  }

  void addProduct(String name, int price, int quantity) {
    productList!.add({'name': name, 'price': price, 'quantity': quantity});
  }

  void searchProduct(String name) {
    if (productList == null || productList!.isEmpty) {
      print('Product Not Found');
      return;
    }

    for (var product in productList!) {
      if (product['name'] == name) {
        print('Product Found: $product');
        return;
      }
    }
    print('Product Not Found');
  }

  void sortProductsByPrice() {
    // Using Bubble Sort
    if (productList == null || productList!.isEmpty) return;

    int n = productList!.length;

    for (int i = 0; i < n - 1; i++) {
      for (int j = 0; j < n - i - 1; j++) {
        if ((productList![j]['price'] as int) >
            (productList![j + 1]['price'] as int)) {
          var temp = productList![j];
          productList![j] = productList![j + 1];
          productList![j + 1] = temp;
        }
      }
    }
    print("Products sorted by price");
  }
}

class NumberFilter {
  List<int> filterOddNumbers(List<int> numbers) {
    List<int> evenNumbers = [];

    for (var number in numbers) {
      if (number % 2 == 0) {
        evenNumbers.add(number);
      }
    }

    return evenNumbers;
  }
}
