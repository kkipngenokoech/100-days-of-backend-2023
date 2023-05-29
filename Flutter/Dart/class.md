# class

All classes descend from Object, the base class for all Dart objects. 

A class has members (variables and methods) and uses a constructor to create an object. If a constructor is not declared, a default constructor will be provided automatically. The default constructor provided for you has no arguments.

What is a constructor, and why is it needed? A constructor has the same name as the class, with
optional parameters. The parameters serve as getters of values when initializing a class for the first
time.

Dart uses syntactic sugar to make it easy to access values by using the this keyword, referring
to the current state in the class.

```dart
class MyClass {
    String type;

    MyClass(this.type) // this is a constructor
}
```

to call the constructor class:

```dart
Fruit  = MyClass('Apple');
```

to use named parameters:

in your constructor:

```dart
class MyClass {
    String type;

    MyClass({this.type})
}
```

then to call this constructor:

```dart
Myclass = MyClass(type:'MyClass');
```

each parameter is optional until you, in your constructor:

```dart
MyClass({@required this.type}) // the @required decorator will make the parameter required
```

you can also add assert to throw an error if the value is missing

```dart
MyClass({@required  this.type}): assert(type != null)
```

## methods

In a class, methods are functions that provide logic for an object. Methods can return a value or void
(no return value, empty).

