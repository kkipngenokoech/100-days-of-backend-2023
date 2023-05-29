# DART

before you start writing flutter applications, you will need to learn dart syntax

dart is used to build mobile, web and server applications

dart is productive, fast, portable approachable and mostly reactive

it is closely similar to c-style syntax

## commenting in dart

single line comments begin with `//`

multi-line comments begin with `/* */`

documentation comments begin with `///`

## main entry point

Every app must have a top-level main() function, which is the entry point to the app. The main()
function is where the app execution starts and returns a void with an optional List<String> param-
eter for arguments. Each function can return a value, and for the main() function the data return
type is a void (empty, contains nothing), meaning that it does not return a value.

### ways of calling the main() function

1. using arrow functions
    `void main() => runApp(MyApp())`
2. using plain functions
   ```dart
   void main (){
    runApp(MyApp());
   }
   ```
3.  adding parameters, optional parameters
    ```dart
    void main(List<Strings> filters){
        print('filters:$filters');
    }
    ```

