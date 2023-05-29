# variables

variables store references to a value

some of built in variables are numbers, strings, Booleans, lists, maps and runes

you can use var to declare a variable without specifying the type

Dart infers the type of variables automatically

it is however advisable to declare the variable type expected so as to improve code readability

an uninstialized variable has a value of null

Use final or const when the variable is not intended to change the initial value. Use const for vari-
ables that need to be compile-time constants, meaning the value is known at compile time.

## declaring variables

var filter = 'company' - here dart will infer the type of the variable

String filter = 'company' - declaring by type 

String filter; - uninitialized value of null

final filter = 'company'; - value will not change

final string filter = 'company'; - declaration or const.

### public and private variables

all dart variables are declared public by default

to declare private variables you can use `_`

By declaring a variable private, you are saying it cannot be accessed from outside classes/functions; in other words, it can be used only from within the declaration class/function.

Use final when the value is assigned at runtime (can be changed by the user). Use const when the value is known at compile time (in code) and will not change at runtime.

### Numbers

declaring variables as numbers restricts the value to numbers only

numbers can be int or double

`int counter = 123`

`double counter = 123.50`

or 

`price = 123.50`

Both int and double allow for positive and negative numbers, and you can enter
extremely large numbers and decimal precision since they both use 64-bit (computer memory) values.

### String

this allows you to enter a sequence of text characters

To add a single line of characters, you can use single or double quotes like 'car' or "car". To add multiline characters, use triple quotes, like "'car"'. Strings can be concatenated (combined) by using the plus (+) operator or by using adjacent single or double quotes.

`String address = 'Hello multiverse!'`

### Boolean

declaring variables as bool allows you to declare a true or false value

`bool true = true`
`isTrue = true`

### List

Declaring variables as List allows multiple values to be entered, a list is an ordered grp of objects

A List can be of fixed length or growable, depending on your needs. By default, a List is created as
growable by using List() or []. To create a fixed-length List, you add the number of rows required
by using this format: List(25)

1. growable list
   1. `List contacts = List()`
   2. `List contacts = []`
2. fixed length list
   1. `List contacts = List(25)`
   2. `List contacts = ['age', 'gender', 'location']`

### Maps

Maps are invaluable a List of values by a key and value, it allows recalling values by their key ID:
    : `Key: Value - 'Keyvalue': 'Value'`
    : `Map mapofFilters = {Key: Value, key: Value}`
to access a value:
    : `mapofFilters[key] = Value`

### runes

these are UTF-32 code points of a String

Unicode defines a numeric value for each letter, digit, and symbol. Dart uses the sequence of UTF-16
code units to represent a 32-bit Unicode value from a string require a special syntax (\uXXXX).
A Unicode code point is \uXXXX, where XXXX is a four-digit hexadecimal value

Runes return the integer value of the Unicode; then you use String.fromCharCodes() to allocate a new String for
the specified charCode.
// Emoji smiling angel Unicode is u+1f607
// Remove the Plus sign and replace with curly brackets
Runes myEmoji = Runes('\u{1f607}');

