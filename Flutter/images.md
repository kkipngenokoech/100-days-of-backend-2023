# Images and icons

## AssetBundle

the asset bundle class provides access to custom resources such as images, fonts, audio, data files and more...

Before a Flutter app can use a resource, you must declare it in the pubspec.yaml file.

you can declare all the assets in each directory. Make sure you end the directory name with a forward slash, ` /` - place this in the [pubspec]

```dart
// pubspec.yaml file to edit
# To add assets to your application, add an assets section, like this:
assets:
—assets/images/
—assets/data/
```

### Images

The image Widget displays an image from a local or URL (web) source.

To load an Image Widget there are a few different constructors to use.

```dart
Image() // - Retrieves image from an ImageProvider class
Image.asset() // - Retrieves image from an AssetBundle class using a key
Image.file() // - Retrieves image from a file class
Image.memory() // - Retrieves image from a Uint8List class
Image.network() // - Retrieves image from a url path
```

Image Widget also supports GIFs.

```dart
// Image - on the left side
Image(
   image: AssetImage("assets/images/logo.png"),
   fit: BoxFit.cover,
),
// Image from a URL - on the right side
Image.network(
   'https://flutter.io/images/catalog-widget-placeholder.png',
),
```

### Icons

The Icon widget is drawn with a glyph from a font described in IconData. 

Flutter’s icons.dart file has the full list of icons available from the font MaterialIcons.

A great way to add custom icons is to add to the AssetBundle fonts containing glyphs. 

Once example is Font Awesome, which has a high-quality list of icons and a Flutter package. Of course, there are many other high-quality icons available from other sources.

The Icon widget allows you to change the Icon widget’s color, size, and other properties

```dart
Icon (
    Icons.brush,
    color: Colors.green,
    size: 48.0
)
```

By declaring your assets in the pubspec.yaml file, they are accessible by the AssetImage class from an AssetBundle. The Image widget through the image property loads a local image with the AssetBundle class. 

To load an image over a network (such as the Web), you use the Image network constructor by passing a URL string.

The Icon widget uses the MaterialIcons font library, which draws a glyph from the font described in the IconData class.