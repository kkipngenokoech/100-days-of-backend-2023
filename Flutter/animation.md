# Animation

flutter has two types of animations:

1. physics-based animations
2. Tween animations

## physics-based animations

this is used to mimic real-world behavior i.e when an object hits the ground, it will bounce and continue moving forward, but with each bounce it will slow down and start having smaller rebounds and eventually stop.

## Tween animations

this is a short-form of in-between animations. Animations has starting points and ending points, a timeline and speed of transition.

this framework automatically calculates the animation transition from starting point to ending point

## Animated container - AnimatedContainer widget

this is a container that gradually changes over time

it has the following arguments:

1. duration
2. curve
3. color
4. height
5. width
6. child
7. decoration
8. transform

## AnimatedCrossFade container widget

this provides a great cross-fade animation between two children widgets.

this widget takes the following arguments:

1. duration
2. firstChild
3. secondChild
4. crossFadeState
5. sizeCurve

The AnimatedCrossFade constructor takes a duration argument, and you use the Duration class to specify 500 milliseconds. 

The sizeCurve argument gives the animation between the two children’s size a spring effect by using Curves.bounceOut. 

The crossFadeState argument sets the child widget to be shown once the animation is completed. By using the _crossFadeStateShowFirst variable, the correct crossFadeState child is displayed. 

The firstChild and secondChild arguments hold the two widgets to animate

## AnimatedOpacity container widget

If you need to hide or partially hide a widget, AnimatedOpacity is a great way to animate fading over time. 

The AnimatedOpacity constructor the takes:

1. duration
2. opacity
3. curve
4. child

arguments

