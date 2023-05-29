# External Packages

flutter supports third party packages for flutter and dart ecosystem.

this allows us not to write all our widgets from scratch, there are a couple of frameworks we can use 

there are two types of external packages written:

1. dart packages written in dart
2. plugins written in Dart, dart code exposing apis

Let’s say you are looking to add functionality to your app such as showing some charts, accessing a
device’s GPS locations, playing background audio, or accessing a database like Firebase. There are
packages for all that.

where to find your external packages: [pub](https://pub.dartlang.org/flutter)

these dependencies once you have them you add them to your `pubspec.yaml` dependency section.

this packages should automatically donwload, but if it fails you use  `flutter packages get`

once they are instaled you can import this packages into your main.dart 

i.e :

```dart
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
```

To use an external package, library or an external class, use the import statement. 

Separating code logic into different class files allows you to separate and group code into manageable objects. 

The import statement allows access to external packages and classes. It requires only one argument,
which specifies the uniform resource identifier (URI) of the class/library.

If the library is created by a package manager, then you specify the package: scheme before the URI. If importing a class, you specify the location and class name or the package: directive

```dart
// Import the material package
import 'package:flutter/material.dart';
// Import external class
import 'charts.dart';
// Import external class in a different folder
import 'services/charts_api.dart';
// Import external class with package: directive
import 'package:project_name/services/charts_api.dart';
```

