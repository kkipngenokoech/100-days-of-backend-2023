# orientation

Under certain scenarios, knowing the device orientation helps in laying out the appropriate UI.


There are two ways to figure out orientation:

1. MediaQuery.of(context).orientation 
2. Orientation­Builder.

A huge note on OrientationBuilder: 
 - it returns the amount of space available to the parent to figure out orientation. This means it does not guarantee the actual device orientation.

You can detect device orientation by calling MediaQuery.of(context) orientation, which returns either a portrait or landscape value. 

There is also OrientationBuilder, which returns the amount of space available to the parent to figure out the orientation. 

I recommend using MediaQuery to retrieve the correct device orientation.