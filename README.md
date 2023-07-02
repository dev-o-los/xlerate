# simple_sizer

A simple package that allows you to create responsive UI based on the current device's height and width, as well as employ useful extensions over your context to make your UI more responsive, and much more...

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

## ReactiveRowCol

[Full Example Here](https://github.com/dev-o-los/simple_sizer/blob/main/example/lib/reactive_row_col_example.dart)

[Click Here For Result](https://github.com/dev-o-los/simple_sizer/assets/112308397/9db94e57-6c13-48b5-b4a1-7657b511e0e1)

```dart
   ReactiveRowCol(
      //Define when you want the widgets to be in row form using the rowWhen parameter
      rowWhen: (screenWidth) =>
          (screenWidth > 500 && screenWidth < double.infinity),

      //Define when you want the widgets to be in column form using the colWhen parameter

      colWhen: (screenWidth) => (screenWidth > 0 && screenWidth <= 500),

      // Use the children parameter to add widgets as usual and you can also use
      //isRow parameter to define specific widgets when the layout is in row form and
      //isCol parameter when the layout is in column form.

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
        //Reactive widgets...
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
