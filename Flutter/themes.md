# themes

in flutter themes allow you to define overall look of your application

A theme is a collection of visual properties i.e colors, fonts, shapes that define appearance of your UI elements thoughout your app.

## theme concepts

### ThemeData

this class represents the overall theme for your flutter application

it defines properties like primary color, accent colors, fonts, text styles and more...

you can create and customize your own ThemeData instance or use one of the built-in themes provided by flutter

they are two ways object:

1. to style the look and feel globally
2. to style only a portion of your application

you can play around with things like:

1. color brightness - light text on a dark background...
2. primary and accent colors
3. canvas color
4. color of app Bar
5. cards
6. dividers
7. selected and unselected options
8. buttons
9. hints
10. errors
11. text
12. icons

in flutter, all items are widgets - and just about everything's customizable.

you can use  ThemeData to do this

### MaterialApp

this is a convinient widget that sets up the basic material design visual items for your application

it automatically applies a default ThemeData and provides additional configuration options for Navigation, localization and more.

### ThemeWidget

this allows you to override specific visual properties from the current ThemeData within a subtree of your widget Hierachy.

This allows you to customize the appearance of specific UI elements while still maintaining the overall theme.

### ThemeData.dark()

this is a flutter built in dark theme that can be used by calling ThemeData.dark() to get a dark theme ThemeData instance

## Global App Theme

to set a global theme for your application, you create a themeData, inside the main.dart file

```dart
class MyApp extends StatelessWidget {
    @override

    Widget build(BuildContext context) {
        return MaterialApp (
            theme: ThemeData(
                // here is where you define your global theme properties
                // i.e primary color, font color, font family, font size
            )
            home: MyHomeWidget();
        )
    }
}
```

there's that debug flag that comes by default when we start a flutter application, to do that you, in your materialApp, define:

```dart
widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(

        )
    )
}
```

## child theme

if you want to customize the appearance of child widgets or specific UI elements you can:

wrap the widgets in theme widget, this widget will completely override the app default theme.

to completely override the default theme:

```dart
widget build(BuildContext context) {
    body: center(
        child: theme (
            data: ThemeData(
                // custom theme properties
            ),
            child: card (

            child: Text('unique title - multiverse'),
            ),
        ),
    ),
}
```

to extend the default theme and customize only some few parts:

```dart
widget build(BuildContext context){
    body: center(
        child: theme (
            data: Theme.of(context).copyWith(cardColor: Colors),
        ),
    ),
}
```

you can always override the default theme properties in the .copyWith() method


