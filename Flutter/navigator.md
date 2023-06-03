# NAVIGATOR

The navigator widget manages a stack of routes to move between pages.

you can optionally pass data to the destination page and back to the original page.

it typically involves three methods:

1. Navigator.push
2. pushNamed
3. pop

Navigator is incredibly smart; it shows native navigation on iOS or Android. For example, in iOS when navigating to a new page, you usually slide the next page from the right side of the screen toward the left. 

In Android when navigating to a new page, you typically slide the next page from the bottom of the screen toward the top. To summarize, in iOS, the new page slides in from the right, and in Android, it slides in from the bottom.

## Navigator push

```dart
Navigator.push( 
    context,
    MaterialPageRoute(
        fullscreenDialog: true,
        builder: (context) => About(),
    ),
);
```

`Navigator.push()` - this is a method provided by flutter's Navigator class, it allows you to push a new route onto the navigation stack

`context` - it refers to the current build context of the widget. it is typically passed down through the widget tree and is used to access various resources and services

`MaterialPageRoute` - this is a predefined flutter class that represents a route that transistions to a full screen dialog page.

`fullscreenDialog` - this property when set to true indicates that the route should be presented as a fullscreen dialog, it affects the transition animation and the appearance of the route.

`builder; (context) => About()` - Here, builder is a callback function that returns the widget tree for the new route. In this example, it creates an instance of the About widget.

## Navigator pop

```dart
Navigator.pop(context);
// Close page and pass a value back to previous page
Navigator.pop(context, 'Done');
```

The following example shows how to use the Navigator.pop method to close the page and navigate back to the previous page. 

You call the Navigator.pop(context) method by passing the BuildContext argument, and the page closes by sliding from the top of the screen toward the bottom

In Flutter, the screens and pages are known as routes, and these routes are just a widget. In Android, a route is similar to an Activity, whereas, in iOS, it is equivalent to a ViewController.

In any mobile app, navigating to different pages defines the workflow of the application, and the way to handle the navigation is known as routing. 

Flutter provides a basic routing class MaterialPageRoute and two methods Navigator.push() and Navigator.pop() that shows how to navigate between two routes.

`N/B`: routes are just widgets, you pop one widget and push another one.
