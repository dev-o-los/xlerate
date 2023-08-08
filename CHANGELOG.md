## 2.1.0

- New extension added for `Duration` on `int`.
- New getters added in `String` extension.
- separated dart files into several `libraries` for better control over `imports`.
  - [Advantage] Only import what you need in your projects files.

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
