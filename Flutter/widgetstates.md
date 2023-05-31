---
marp: true
---

# STATELESS AND STATEFUL WIDGETS

flutter widgets are the building blocks of user interfaces

the ui is built by nesting widgets together into a widget tree.

Flutter’s react-style framework means it observes when the state of a widget changes and then com-
pares it to the previous state to determine the least number of changes to make. Flutter manages the
relationship between the state and the UI and rebuilds only those widgets when the state changes.

## stateless widget

this widget is used when data doesn't change and it relies on its initial information, data

it is a widget without a state

this widgets includes:

1. buttons
2. text
3. icon
4. image

```dart
class Instructions extends StatelessWidget (
    //.....
)
```

## stateful widget

this widget is used when the state of a widget changes over time

for changes to propagate to ui, making a call to setState method is necessary

stateful widget class makes  an instance of State class

State class - this is for data that can be read syncronously when the widget is built and might change over time

setState method - From within the State class, you make a call to the setState() method to
refresh changed data, telling the framework that the widget should redraw because the state
has changed. For all the variables that need changes, modify the values in setState(() {
_ myValue += 50.0;}). Any variable values modified outside the setState() method will
not refresh the UI. Therefore, it is best to place calculations that do not need state changes
outside the setState() method.

```dart
class MaximumBid extends StatefulWidget {
    @override

    _maximumBidState creatState() => _maximumBidState();

    class _MaximumBidState extends State <MaximumBid> {
        double _maximumBid = 0.0;

        void _increaseMyMaxBid(){
            setState((){
                _maximumBid += 50.0;
            })
        }
    }

    @override
    Widget build(BuildContext context){
        return Column (
            children: <Widget>[
                Text('my maximum bid is: $_maximumBid');
                FlatButton.icon(
                    onPressed: () => _increaseMyMaxBid(),
                    icon: Icon(Icons.add_circle),
                    label: Text('increase bid'),
                )
            ]
        )
    }
}

```