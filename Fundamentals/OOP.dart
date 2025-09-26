class person {
  String _name;
  int _age;
  String _address;

  person(this._name, this._age, this._address);

  int get age => _age;
  String get name => _name;
  String get address => _address;

  set age(int age) => this._age = age;
  set name(String name) => this._name = name;
  set address(String address) => this._address = address;

  void introduce() {
    print("Hello! I am $_name. My age is $_age. I belongs to $_address");
  }
}

class employee extends person {
  String _dep;
  int _salary;

  employee(String name, int age, String address, this._dep, this._salary)
    : super(name, age, address);

  // Adding a display method to show employee details
  void display() {
    print(
      "Employee Name: $name, Age: $age, Address: $address, Department: $_dep, Salary: $_salary",
    );
  }
}

class ageException implements Exception {
  String message;
  ageException(this.message);

  @override
  String toString() {
    return "$message";
  }
}

void main() {
  person myself = person("Murtaza", 23, "Jhelum");

  myself.introduce();

  int age = 17;

  // Exception Handling

  try {
    if (age < 18) {
      throw new ageException(
        "Not Eligible for Vote. Age Must be greator then 18",
      );
    }
    print("Eligible for Vote");
  } catch (e) {
    print(e);
  }
}
