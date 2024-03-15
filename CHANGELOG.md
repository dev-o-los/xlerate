## 2.8.0

- New `formatDate` extension added over DateTime class
- Added some extensions for String class
- Added extension methods for ConnectionState in Flutter widgets.
- [Deprecated]
  - `pr` getter extension has been deprecated.
- Improved pub points

## 2.7.0

- New `dialogBx` amd `botmSht` extensions added over context.
- New `pr` getter extension added over String to easily log text to console.
- New `Box` creator class added to the xlerate pkg.
  - Helps you develop a 'Container' Widget that is easily customisable through method chaining.

## 2.6.0

- New `Overlay` extension added over context.
- `tsf` extension over context has been deprecated.

## 2.5.2

- readme changes

## 2.5.1

- [Breaking Change]

  - `simpleDialogBox` and `simpleBottomSheet` has been depreacted.

## 2.5.0

- Added more params to `simpleDialogBox`.

- [Changes]

  - `outlineTheBorder` changed to `brdrCol`.
  - `curveAllCorners` changed to `curveCorners`.

## 2.4.2

- Fixed `context.pop()` issue.
- Bottom Sheet width erro fixed.
- `.col()` in `TextCreator` is now nullable.
- One new extension over `BuildContext`.

## 2.4.1

- Bug Fixes

## 2.4.0

- New `clampTextSizeInRange()` is added

- New `BeveledRectangleBorder()` added in `Shaper` class.

- [Removed]
  - The `theYesNoDialogBox()` and `theYesNoCupertinoDialogBox()` has been deprecated
    since from `Flutter 3.13` , dialogboxes are now adaptive.

## 2.3.1

- [Bug] Not able to access `pos()` extension fixed

## 2.3.0

- Introducing navigation in `simple_sizer`.

  - Use below extensions on `context` to easily navigate between screens

  [1] `goTo()` [works as `Navigator.push()`]

  [2] `rplcmntgoTo()` [works as `Navigatoe.pushReplacement()`]

  [3] `pop()` [works as `Navigator.pop()`]

  [4] `goToNamed` [works as `Navigator.pushNamed()`]

- New `Shaper` class added in the creators.
  - Helps in shaping widgets which contains `shape` parameter.

## 2.2.0

- New 'Padding' extensions have been introduced for quickly placing padding around
  any widget's left-right and top-bottom edges -

  [1] `ph12()` , `ph16()`...
  [2] `pv12()` , `pv16()`...

- New extension method `pos()`[Positioned] added on Widget.
  - Allows for convenient widget placement in a 'Stack' widget.

## 2.1.0

- New extension added for `Duration` on `int`.
- New getters added in `String` extension.
- separated dart files into several `libraries` for better control over `imports`.

  - [Advantage] Only import what you need in your projects files.

- [Changes]

  - `clampDimensionWithCurrentWidth()` changed to `clampWidthInRange()`.
  - `clampDimensionWithCurrentHeight()` changed to`clampHeightInRange()`.

## 2.0.0

- [`Breaking Change`]

  Helper Methods for `Shape Border` has been removed.

- New parameters added in `simpleBottomSheet()`

- New methods added to `TextCreator`

## 1.0.0

- [`Breaking Change`]

  The Text extensions have been `deprecated` and replaced by all new `TextCreator` class
  for better control over ui rendering.

- [`Breaking Change`]

  The BoxDecoration extensions have been `deprecated` and replaced by all new `Decorate` class
  for better control over ui rendering.

- New extention added on `bool` and `String`

## 0.9.1

- readme.md updated

## 0.9.0

- New helper methods added for BoxDecorations in Containers -

  [1] `curveCorners()`

  [2] `curveOnlyTopCorners()`

  [3] `curveOnlyBottomCorners()`

- New extension added on `BoxDecoration`

- New methods added for easy UI building

  [1] `simpleBottomSheet()` added for easy implementaion of bottomsheets in android

  [2] `simpleDialogBox()` added for easy implementaion of dialogboxes in android

  [3] `theYesNoDialogBox()` added for easy implementaion of (Y/N) dialogbox in android

  [4] `theYesNoCupertinoDialogBox()` added for easy implementaion of (Y/N) dialogbox in ios

- Text extensions bug fixes

## 0.8.0

- New enum added for `TextAlign`
- New helper methods added for responive width and height -

  [1] `clampDimensionWithCurrentWidth()`
  [2] `clampDimensionWithCurrentHeight()`

- New `Padding` extensions added -

  [1] `pLRB()`
  [2] `pLRT()`

- New extension added for `SizedBox`

  [1] `szdbox()`

- Text extensions bug fixes

## 0.7.3

- Text extensions bug fixed

## 0.7.2

- Readme.md updated

## 0.7.1

- Readme.md updated
- Bug fixes

## 0.7.0

- Helpful extension over Text added for easy ui & ux development
- reactive shapes added so that you easily use RoundedRectBorder with less boiler code

## 0.6.0

- Helpful extension over Widget for FittedBox,LimitedBox and SliverToBoxAdapter added
- bug fixed where hbox and wbox were not accessible

## 0.5.1

- readme.md updated

## 0.5.0

- new .hbox and .wbox extension methods added

## 0.4.0

- Helpful extension over Widget for Alignment,Expanded,
  Flexible,Padding,AspectRatio,FractionallySizedBox,
  Center added
- new .sp parameter added
- new .csp() extension method added

## 0.3.0

- new .ch() extension method added
- new .cw() extension method added
- Bug fixed for .h on double values

## 0.2.1

- Readme.md updated
- Package description updated

## 0.2.0

- ReactiveHome Widget added
- Helpful extension over Buildctx added

## 0.1.0

- ReactiveRowCol Widget added

## 0.0.1

- Initial release
