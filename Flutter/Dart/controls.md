# FLOW STATEMENTS

## if and else

```dart
if (condition){
    // block of statements to be executed
}
else if (condition){
    // block of statements to be executed
}
else {
    // block of statements to be executed
}
```

## ternary operator

to use ternary operator you:
check condition? (if true run this code): (else run this code)

## for loops

this for loop allows you to iterate over a list

```dart
for (int index = 0; index < 10; index++){

}
```

or 

```dart
for (int index = 0, index < variableName.length, index++){

}
```

you can also use for in loop

In the following example, you’ll use the for-in loop and iterate through a List of int values with
the listOfNumbers variable. The for-in loop takes one parameter that exposes the object (listOf-
Numbers) properties. You declare the int number variable to access the properties of the listOfNum-
bers List. Inside the loop, the print statement is used to show each value from listOfNumbers by
using the number variable value.
// or for-in loop
List listOfNumbers = [10, 20, 30];
for (int number in listOfNumbers) {
print('number: $number');
}
// Result from print statement
// number: 10
// number: 20
// number: 30

## while and do-while

Both the while and do-while loops evaluate a condition and continue to loop as long as the condi-
tion returns a value of true. The while loop evaluates the condition before the loop is executed.
The do-while loop evaluates the condition after the loop is executed at least once. Let’s look at two
examples that show how to use the while and do-while loops.

## continue

By using the continue statement, you can stop at the current loop location and skip to the start of
the next loop iteration.

## switch and case

```dart
// switch and case
String coffee = 'espresso';
switch (coffee) {
case 'flavored':
orderFlavored();
break;
case 'dark-roast':
orderDarkRoast();
break;
case 'espresso':
orderEspresso();
break;
default:
orderNotAvailable();
}
```

