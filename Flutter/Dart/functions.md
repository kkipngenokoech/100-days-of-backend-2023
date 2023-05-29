# functions

Functions are used to group reusable logic. A function can optionally take parameters and return
values

all functions return a value by default and if no return statement is specified, dart automatically appends to the function body the return null statement, which is implicitly added for you.

Since all functions return a value, you start each function by specifying the return type expected.
When calling a function and a return value is not needed, then start the function with the void type,
meaning nothing. Using the void type is not required, but it’s recommended for readability. But when
the function is expected to return a value, start the function with the type of data being passed back
(bool, int, String, List. . .) and use the return statement to pass a value.

```dart
void main() => runApp(new myApp());
```

## passing parameters to functions

```dart
void orderExpresso (int howManyCups){
    print('howManyCups:$howManyCups');
}

// calling the function
orderExpresso(2);
```

## functions that return values

```dart
bool orderExpresso(int howManyCups){
    print('howManyCups:$howManyCups');
    return true;
}

bool isOrderExpresso = orderExpresso(2);
print(isOrderExpresso);
```

## to make parameters optional

you wrap it in square brackets

```dart
bool orderExpresso([int howManyCups]){
    print('howManyCups:$howManyCups');
    bool ordered = false;
    if (howManyCups != null){
        ordered = true;
    }
    return ordered;
}
```

