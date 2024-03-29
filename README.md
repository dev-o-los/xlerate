# xlerate

`xlerate` is a compilation of features inspired by multiple packages on `pub.dev`.

There are three main reasons for the existence of this package -

[1] To help in rapid ui development.

[2] Ease the use of widgets in flutter.

[3] Reduce boilerplate code.

Supports Android, iOS, Web, Mac, Linux and Windows.

<p align="center">
  <br />
  <br />
<a href="https://www.buymeacoffee.com/k.utkarsh" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>
</p>

## Features (What it can do)

`xlerate` has many tricks up it's sleeve

[1] Handle UI layouts based on screen size.

[2] Uses Extensions for easy access of various widgets.

[3] Useful pre-created methods and widgets for good-looking ui.

[4] Reactive Widgets for responsive design.

[5] Useful helper methods to minimize boiler code.

## Table of contents

- [Responsiveness](#responsiveness)
- [Reactive Widgets](#reactive-widgets)
- [Extensions](#extensions)
- [Creators](#creators)
  - [Container](#container-box)
  - [Text](#text)
  - [Box Decoration](#boxdecoration)
  - [Shaper](#shaper)
- [App Components](#app-components)
- [Helper Methods](#helper-methods)

## Inspiration

This package was heavily influenced by some of the top pub.dev packages, including [sizer](https://pub.dev/packages/sizer) and [velocity_x](https://pub.dev/packages/velocity_x). The goal of `xlerate` is to merge several valuable elements from other packages, enhance them further, and bring them all together under one roof for easy and rapid UI creation by importing only one package.

---

# Usage

## Install it

You can install xlerate using the below command:

```css
 $ flutter pub add xlerate
```

## Import it

Now in your `dart` file you can use:

```dart
import 'package:xlerate/xlerate.dart';
```

---

# Responsiveness

When developing for mobile screens prefer to use `initDevSize` method since the screen is fixed.

## Import [Step 1]

```dart
import 'package:xlerate/size_config.dart';
```

## Initialize initDevSize [Step 2]

Add the `SizeConfig.initDevSize(context)` function in the first build widget.

```dart
Widget build(BuildContext context) {
    //Add the initdevsize method only here and use it through out the app
    SizeConfig.initDevSize(context);
    //If your app just uses [num.ch()] and [num.cw()], do not initialise this function.
    //For more info read the below [Note]
    return MaterialApp(
      title: 'Xlerate',
      home: const HomePage(),
    );
  }
```

## Parameters [Step 3]

| Extension  | Description                                             |
| ---------- | ------------------------------------------------------- |
| `{num}.h`  | Returns a calculated height based on the current device |
| `{num}.w`  | Returns a calculated width based on the current device  |
| `{num}.sp` | Returns scale independent pixels (sp) for font sizing   |

## Usage [Step 4]

```dart
  SizedBox(
    // Here we are giving 30 % of screen height
    height: 30.h,
    // Here we are giving 30 % of screen width
    width: 31.w,
    ),
  );

  //or you can use

  //Return a SizedBox with height 30px
  30.hbox;
  //Return a SizedBox with width 30px
  30.wbox;
```

```dart
   Container(
    // Here we are giving 20 % of screen height
    height: 20.h,
    // Here we are giving 40 % of screen width
    width: 40.w,
    child: your-child, // :)
   );
```

This is only a small illustration of what you may accomplish with these options.

---

When creating for flutter web, follow the steps below. Because web windows are resizeable, we may need to modify the layout, font sizes, or height and width of widgets every time the window resizes.

## Import [Step 1]

```dart
import 'package:xlerate/size_config_web.dart';
```

## Parameters [Step 2]

| Extension     | Description                                                              |
| ------------- | ------------------------------------------------------------------------ |
| `{num}.ch()`  | Returns a calculated height based on the current context                 |
| `{num}.cw()`  | Returns a calculated width based on the current context                  |
| `{num}.csp()` | Returns scale independent pixels (sp) for font sizing on current context |

Here c stands for `current`

## Usage [Step 3]

```dart
  SizedBox(
    // Here we are giving 30 % of current screen height
    height: 30.ch(context),
    // Here we are giving 30 % of current screen width
    width: 31.cw(context),
    ),
  );
```

```dart
   Container(
    // Here we are giving 20 % of current screen height
    height: 20.ch(context),
    // Here we are giving 40 % of current screen width
    width: 40.cw(context),
    child: your-child, // :)
   );
```

---

### Have you ever found yourself in a situation where you wish to scale a widget's height or width by a specific percentage of the screen's width and height, then stop when it reaches a specified pixel value? If so, these approaches are for you.

| Method Name            | Description                                             |
| ---------------------- | ------------------------------------------------------- |
| clampWidthInRange()    | clamps the width after it has reached specific width    |
| clampHeightInRange()   | clamps the height after it has reached specific height  |
| clampTextSizeInRange() | clamps the text size after it has reached specific size |

---

# Reactive Widgets

The second most useful feature of `xlerate` is reactive widgets

Reactive Widgets are special members of `xlerate` pkg that help in UI Development

## ReactiveRowCol

[Full Example Here](https://github.com/dev-o-los/xlerate/blob/main/example/lib/reactive_row_col_example.dart)

[Click Here For Result](https://github.com/dev-o-los/xlerate/assets/112308397/8f6d2ddf-6681-4324-b307-c144078e7e32)

```dart
   ReactiveRowCol(
      // Define when you want the widgets to be in row form using the rowWhen parameter
      rowWhen: (screenWidth) =>
          (screenWidth > 500 && screenWidth < double.infinity),

      // Define when you want the widgets to be in column form using the colWhen parameter

      colWhen: (screenWidth) => (screenWidth > 0 && screenWidth <= 500),

      // Use the children parameter to add widgets as usual and you can also use
      // isRow parameter to define specific widgets when the layout is in row form and
      // isCol parameter when the layout is in column form.

      children: (isRow, isCol) => [
        // Reactive widgets...
        Container(
          height: 200,
          width: 30.w,
          color: Colors.red,
        ),
        isRow
            ? Container(
                height: 200,
                width: 30.w,
                color: Colors.green,
              )
            : Container(),
        Container(
          height: 200,
          width: 30.w,
          color: Colors.pink,
        ),
        // Reactive widgets...
      ],
   );
```

## ReactiveHome

[Full Example Here](https://github.com/dev-o-los/xlerate/blob/main/example/lib/reactive_home_example.dart)

[Click Here For Result](https://github.com/dev-o-los/xlerate/assets/112308397/09d144c2-6c74-4209-9b98-be60b96ebce7)

```dart
  ReactiveHome(
      // The `pages` parameter in the `ReactiveHome` widget is used to define the list of pages that
      // will be displayed in the reactive home screen. Each page is represented by a widget, such as
      // pages that the user can navigate between using the reactive navigation bar.
      pages: [
        MyWidget1(),
        MyWidget2(),
        MyWidget3(),
      ],
      // The `reactiveDestinations` parameter in the `ReactiveHome` widget is used to define the list
      // of destinations that will be displayed in the reactive navigation bar or rail. Each destination is
      // represented by a `ReactiveDestination` object, which consists of a label and an icon. These
      // destinations are used to navigate between different pages in the `ReactiveHome` widget.
      reactiveDestinations: [
        ReactiveDestination(label: 'MyWidet1', icon: Icons.home),
        ReactiveDestination(label: 'MyWidet2', icon: Icons.home_filled),
        ReactiveDestination(label: 'MyWidet3', icon: Icons.home_outlined),
      ],
  );
```

---

# Extensions

The third most useful feature of `xlerate` is extensions

## Context Extensions

<img src="https://imgur.com/JueS5VB.png">

## Widget Extensions

<img src="https://imgur.com/RKazBPh.png">

## DataType Extensions

<img src="https://imgur.com/OXJBKdS.png">

---

# Creators

The fourth most useful feature of `xlerate` is Creators.

## Container [Box]

`Box` is the all new creator for `Container`.

I'm pretty sure that you must have ran into this bug

```dart

color == null || decoration == null
"Cannot provide both a color and a decoration\nTo provide both, use \"decoration: BoxDecoration(color: color)\"."

```

It's an extremely frustrating bug, but if you utilise the `Box` creator, you'll never have to deal with it again.

But it isn't the only reason you should use the 'Box'; let me show you why it is superior than the container.

```dart

// Both produce the same result.
// But Box makes it easy to customize the widget.

Container(
    height: 100,
    width: 100,
    color: Colors.amber,
    decoration: const BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
    ),
  ),

//More fluent and chained method approach.
Box().h(100).w(100).col(Colors.redAccent).curveCorners().create(),

```

<img src="https://imgur.com/YlDm9N3.png">

---

## Text

Writing text widget has now become more easy , see you can do this to create text widget in flutter.

```dart
  const Text('xlerate').txt.semibold.xxl.col(Colors.red).create();

  //It is necessary to call create at the conclusion of the method chain since
  //it is only then that the Text Widget will be shown.


  //or you can do this

  'xlerate'.txt.semibold.xxl.col(Colors.red).create()

  //There are many other cool methods and getters in the `TextCreator` class, explore them as well.

```

Use `Text(data).txt...` when you know data is constant and use `'data'.txt...` when data is variable.

Result

<img src="https://imgur.com/ZAHHSKG.png">

---

## BoxDecoration

BoxDecoration by using `Decorate` class.

```dart
  Container(
    height: 30.h,
    width: 50.w,
    //Here we are curving all the corner by default radius of 20 and then coloring it with red color
    //and lastly creating it.
    decoration: Decorate.instance.curveAllCorners().col(Colors.red).create(),
  ),
  11.hbox,
  Container(
    height: 30.h,
    width: 50.w,
    decoration: Decorate.instance.col(Colors.green).create(),
  ),
```

Result

<img src="https://imgur.com/muxvIFR.png">

---

## Shaper

ShapeBorder with `Shaper` class.

```dart
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      //Here we are using Shaper class to create a RoundedRectangleBorder for the first card widget
      Card(
        //roundrectbrdr = RoundedRectangleBorder()
        //curvTL20 = curve the top left corner by radius 20
        //curvBR20 = curve the bottom right corner by radius 20
        //lastly calling calling create() to render.😪
        shape: Shaper.roundrectbrdr.curvTL20.curvBR20.create(),
        //Crazzzzzzzzzzzyyyyyyyyyyyyy one liner Codddddddddddeeeeeee
        child: const Text('xlerate').txt.xxxl.create().pLTRB(40, 10, 40, 10),
      ),
      //btw here 20.hbox = SizedBox(height: 20);
      20.hbox,
      //Here we are using Shaper class to create a StadiumBorder for the second card widget
      Card(
        //stadiumbrdr = StadiumBorder()
        shape: Shaper.stadiumbrdr.create(),
        //See the Text docs to understand this.
        child: const Text('xlerate').txt.xxxl.create().pLTRB(40, 10, 40, 10),
      ),
    ],
  );
```

Result

<img src="https://imgur.com/ESxVk78.png">

---

# Helper Methods

The sixth most useful feature of `xlerate` is helper methods

### BorderRadius Helper Methods helps in curving the borders of a container

| Method Name    | Description                                        |
| -------------- | -------------------------------------------------- |
| curveCorners() | Rounds all the corners with a default radius of 20 |
| curveTop()     | Rounds top corners with a default radius of 20     |
| curveBttm()    | Rounds bottom corners with a default radius of 20  |
