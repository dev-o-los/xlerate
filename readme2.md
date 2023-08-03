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

[1] Handle UI layouts using according to diffrent screen sizes.

[2] Uses Extensions for easy access of various widgets.

[3] Useful pre-created methods and widgets for good-looking ui.

[4] Reactive Widgets for responsive design.

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
```

or you can use

```dart
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

---

When building for flutter web prefer to use the steps given below,since the web windows are resizeable so we need to change layout or text sizes or height and width of widgets everytime window resizes.

## Parameters [Step 1]

| Extension     | Description                                                              |
| ------------- | ------------------------------------------------------------------------ |
| `{num}.ch()`  | Returns a calculated width based on the current context                  |
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
