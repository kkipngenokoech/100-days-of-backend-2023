# Widget Tree

the widget Tree is how we create our UI

you position widgets within each other to build simple and complex layouts

the plan in normally to keep widgets as shallow as possible

common widgets include:

1. scaffold  - implements the material design visual layout, allowing the use of Flutter's Material Components Widgets
2. AppBar - implements the toolbar at the top of the screen
3. CircleAvatar - Usually used to show a rounded user profile photo, but you can use any image
4. Divider - Draws a horizontal line with padding above and below
5. SingleChildScrollview - this adds vertical or horizontal scrolling ability to single child widgets
6. padding - this adds top, left, bottom and right padding
7. Column - This displays a vertical list of child widgets
8. Row - this displays a horizontal list of child widgets
9. Container - this widget can be used as an empty placeholder (Invisible) or can specify height, width, color, transform (rotate, move, skew), and many more properties.
10. Expanded - This expands and fills the available space for the child widget that belongs to a column or Row Widget
11. Text - this is a widget used to display labels on the screen, t can be configured to be a single line or multiple lines. An optional style argument can be applied to change the color, font, size, and many other properties.
12. stack - stack lets you stack widgets on top of each other and use a `Positioned(optional)` widget to align each child 
13. Positioned - this widget works with the stack widget to control child positioning and size A Positioned widget allows you to set the height and width. You can also specify the position location distance from the top, bottom, left, and right sides of the Stack widget.