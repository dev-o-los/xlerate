# simple_sizer

`simple_sizer` is a collection of various of features offered by numerous packages on `pub.dev`.

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

`simple_sizer` has many tricks up it's sleeve

[1] Handle UI layouts using according to different screen sizes.

[2] Uses Extensions for easy access of various widgets.

[3] Useful pre-created methods and widgets for good-looking ui.

[4] Reactive Widgets for responsive design.

[5] Useful helper methods to minimize boiler code.

## Table of contents

- [Responsiveness](#responsiveness)
- [Reactive Widgets](#reactive-widgets)
- [Extensions](#extensions)
- [Text](#text)
- [App Components](#app-components)
- [Helper Methods](#helper-methods)

## Inspiration

This package was heavily influenced by some of the top pub.dev packages, including [sizer](https://pub.dev/packages/sizer) and [velocity_x](https://pub.dev/packages/velocity_x). The goal of `simple_sizer` is to merge several valuable elements from other packages, enhance them further, and bring them all together under one roof for easy and rapid UI creation by importing only one package.

---

# Usage

## Install it

You can install simple_sizer using the below command:

```css
 $ flutter pub add simple_sizer
```

## Import it

Now in your `dart` file you can use:

```dart
import 'package:simple_sizer/simple_sizer.dart';
```

---

# Responsiveness

When developing for mobile screens prefer to use `initDevSize` method since the screen is fixed.

## Initialize initDevSize [Step 1]

Add the `SizeConfig.initDevSize(context)` function in the first build widget.

```dart
Widget build(BuildContext context) {
    //Add the initdevsize method only here and use it through out the app
    SizeConfig.initDevSize(context);
    //If your app just uses [num.ch()] and [num.cw()], do not initialise this function.
    //For more info read the below [Note]
    return MaterialApp(
      title: 'Simple Sizer Example',
      home: const HomePage(),
    );
  }
```

## Parameters [Step 2]

| Extension  | Description                                             |
| ---------- | ------------------------------------------------------- |
| `{num}.h`  | Returns a calculated height based on the current device |
| `{num}.w`  | Returns a calculated width based on the current device  |
| `{num}.sp` | Returns scale independent pixels (sp) for font sizing   |

## Usage [Step 3]

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

You can do much more with these parameters, this was just a little example.

---

When building for flutter web prefer to use the steps given below,since the web windows are resizeable so we need to change layout or text sizes or height and width of widgets everytime window resizes.

## Parameters [Step 1]

| Extension     | Description                                                              |
| ------------- | ------------------------------------------------------------------------ |
| `{num}.ch()`  | Returns a calculated height based on the current context                 |
| `{num}.cw()`  | Returns a calculated width based on the current context                  |
| `{num}.csp()` | Returns scale independent pixels (sp) for font sizing on current context |

Here c stands for `current`

## Usage [Step 2]

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

# Reactive Widgets

The second most useful feature of `simple_sizer` is reactive widgets

Reactive Widgets are special members of `simple_sizer` pkg that help in UI Development

## ReactiveRowCol

[Full Example Here](https://github.com/dev-o-los/simple_sizer/blob/main/example/lib/reactive_row_col_example.dart)

[Click Here For Result](https://github.com/dev-o-los/simple_sizer/assets/112308397/8f6d2ddf-6681-4324-b307-c144078e7e32)

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

[Full Example Here](https://github.com/dev-o-los/simple_sizer/blob/main/example/lib/reactive_home_example.dart)

[Click Here For Result](https://github.com/dev-o-los/simple_sizer/assets/112308397/09d144c2-6c74-4209-9b98-be60b96ebce7)

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

The third most useful feature of `simple_sizer` is east to use extensions

## Context Extensions

<img src="https://imgur.com/w8mIWLr.png">

## Widget Extensions

<img src="https://imgur.com/4169Uvh.png">

## DataType Extensions

<!-- <img src="https://imgur.com/4169Uvh.png"> -->

---

# Text

The fourth most useful feature of `simple_sizer` is Text Creation.

Writing text widget has now become more easy , see you can do this to create text widget in flutter.

```dart
  const Text('simple_sizer').txt.semibold.xxl.col(Colors.red).create();

  //Must call create at the end of method chaning as only then it will render the Text Widget

  //or you can do this

  'simple_sizer'.txt.semibold.xxl.col(Colors.red).create()

  //There are many other cool methods and getters in the `TextCreator` class, explore them as well.

```

Use `Text(data).txt...` when you know data is constant and use `'data'.txt...` when data is variable.

Result

<img src="https://imgur.com/uhjyfZw.png">

---

# App Components

The fifth most useful feature of `simple_sizer` is app components

## BottomSheet

```dart
ElevatedButton(
  //call simplebottomsheet to trigger the bottom sheet
    onPressed: () => simpleBottomSheet(context, widgets: [
      Container(
        //decorate the listTile using extensions
        decoration: const BoxDecoration()
            .col(Colors.blueGrey)
            .curveAllCornersByRad(rad: 25),
        child: ListTile(
          title: const Text('Title 1').semibold(),
        ),
      ).p12(),
      ListTile(
        tileColor: Colors.blueGrey,
        // or you can use shape helper methods
        shape: allRoundedRectBrdr(),
        title: const Text('Title 2').semibold(),
        //giving padding all around the listTile
      ).p12(),
    ]),
    child: const Text('Press'),
).cntr(),
```

## Dialog Box

`simple_sizer` provides three types of dialog boxes -

[1] `simpleDialogBox()`

[2] `yesNoDialogBox()`

[3] `yesNoCupertinoDialogBox()`

Simply calling them in the onPressed function will cause the dialogue boxes to appear.

---

# Helper Methods

The sixth most useful feature of `simple_sizer` is helper methods

Shape helpers are auto-implemented `RoundedRectangleBorder` methods that help in easy
customization of widgets containing `shape` parameter.

| Method Name           | Description                                           |
| --------------------- | ----------------------------------------------------- |
| allRoundedRectBrdr()  | Rounds all the corners with a default radius of 25    |
| onlyRoundedRectBrdr() | Rounds specific corners with a default radius of 25   |
| verRoundedRectBrdr()  | Rounds vertical corners with a default radius of 25   |
| horzRoundedRectBrdr() | Rounds horizontal corners with a default radius of 25 |

### BorderRadius Helper Methods helps in curving the borders of a container

| Method Name              | Description                                        |
| ------------------------ | -------------------------------------------------- |
| curveCorners()           | Rounds all the corners with a default radius of 20 |
| curveOnlyTopCorners()    | Rounds top corners with a default radius of 20     |
| curveOnlyBottomCorners() | Rounds bottom corners with a default radius of 20  |

### Have you ever found yourself in a situation where you wish to scale a widget's height or width by a specific percentage of the screen's width and height, then stop when it reaches a specified pixel value? If so, these approaches are for you.

| Method Name                       | Description                                            |
| --------------------------------- | ------------------------------------------------------ |
| clampDimensionWithCurrentWidth()  | clamps the width after it has reached specific width   |
| clampDimensionWithCurrentHeight() | clamps the height after it has reached specific height |
