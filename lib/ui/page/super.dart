// ignore_for_file: avoid_print

// class Laptop {
//   void display() {
//     print("This is Laptop Display");
//   }

//   String name;
//   Laptop(this.name);
//   int age = 5;
// }

// class Macbook extends Laptop {
//   Macbook(super.name);

//   void displayForMac() {
//     super.display();

//     print("This is Mackbook Display");
//     print("This is Laptop Super: ${super.name}");
//   }
// }

// void main() {
//   Macbook macbook = Macbook("Sadman");
//   macbook.displayForMac();
// }

class Person {
  final String name;
  final int age;
  Person({required this.name, required this.age});
  
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          age == other.age;

  @override
  int get hashCode => name.hashCode ^ age.hashCode;
}

void main() {
  Person person = Person(name: "Sadman", age: 15);
  Person person1 = Person(name: "Sadman", age: 15);

  print(person == person1);
  print(person.hashCode);
  print(person1.hashCode);
}
