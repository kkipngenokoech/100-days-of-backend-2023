# flutter

it provides the developers with tools to create beautiful and professional applications and with the ability to customize any aspect of the application.

## widgets and elements

the flutter ui is implemented by using widgets from modern reactive frameworks.

flutter uses its own rendering engine to draw widgets.

widgets are the building blocks of a flutter application

they form the instuctions of the different parts of the application

you can use to alter the look and feel of your application

a combination of widgets form widget tree - a ui can be made of different widgets

➤➤ Widgets with structuring elements such as a list, grid, text, and button
➤➤ Widgets with input elements such as a form, form fields, and keyboard listeners
➤➤ Widgets with styling elements such as font type, size, weight, color, border, and shadow
➤➤ Widgets to lay out the UI such as row, column, stack, centering, and padding
➤➤ Widgets with interactive elements that respond to touch, gestures, dragging, and dismissible
➤➤ Widgets with animation and motion elements such as hero animation, animated container,
animated crossfade, fade transition, rotation, scale, size, slide, and opacity
➤➤ Widgets with elements like assets, images, and icons
➤➤ Widgets that can be nested together to create the UI needed
➤➤ Custom widgets you can create yourself

## widget lifecycle

to build uis using flutter, you can use two widget states:

1. StatelessWidget
2. StatefulWidget

A stateless widget is used when the values/ state do not change 

A stateful widget is used when the values/ state change

### stateless widget lifecycle 

it is built based on its configuration and does not change dynamically - displaying an image with a description that is not bound to change

syntax:

```dart
class JournalList extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Cointainer();
    }   
}
```

### stateful widget lifecycle

it is built based on its configuration but can change dynamically

syntax

```dart
class JournalEdit extends StatefulWidget {
    @override
    _JournalEditState createState() => _JournalEditState();
}
class _JournalEditState extends State<JournalEdit>{
    @override
    Widget build(BuildContext context) {
        return Container();
    }
}
```

## MATERIAL COMPONENTS

by default the flutter app uses Material components widget based  on Material design

the components in a flutter project include Visual, behavioral and motion widgets.

Flutter projects also include unit testing for
widgets, which are files that contain individual code to test whether the logic performs as designed.

