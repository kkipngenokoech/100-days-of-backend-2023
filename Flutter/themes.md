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

