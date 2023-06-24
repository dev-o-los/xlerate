# simple_sizer

A simple pkg that helps you to make responsive ui based on current device's height and width.

Supports Android, iOS, Web, Mac, Linux and Windows.

## Features

You may use simple_sizer to give your sized boxes and containers a percentage of your device's width or height to make them responsive on different screens.

<img src="https://imgur.com/JIg5YHg.png" width=200>
<img src="https://imgur.com/a26uSxF.png" width=200>

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

## Initialize initDevSize

Add the `SizeConfig.initDevSize(context)` function in the first build widget.

```dart
Widget build(BuildContext context) {
    //Add the initdevsize method only here and use it through out the app
    SizeConfig.initDevSize(context);
    //
    return MaterialApp(
      title: 'Simple Sizer Example',
      home: const HomePage(),
    );
  }
```

## Parameters

- `{num}.h` - Returns a calculated height based on the current device
- `{num}.w` - Returns a calculated width based on the current device

## Sized Box

```dart
  SizedBox(
    // Here we are giving 30 % of screen height
    height: 30.h,
    // Here we are giving 30 % of screen width
    width: 31.w,
    ),
  );
```

## Padding

```dart
   Padding(
      padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 7.w),
   );
```
