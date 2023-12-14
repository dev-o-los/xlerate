import 'package:flutter/material.dart';
import 'package:xlerate/src/private/mixins/decoration_mixin.dart';
import 'package:xlerate/src/private/mixins/create_mixin.dart';
import 'package:xlerate/xlerate.dart';

@protected
class Box implements CreateMixin<Container>, DecorationMixin<Box> {
  final Widget? child;

  /// The `Box` class in Dart is a container widget that allows for easy customization of its appearance
  /// and properties.
  Box({this.child});

  double? _height;
  double? _width;

  AlignmentGeometry? _alignment;
  AlignmentGeometry? _transformalignment;
  BoxConstraints? _constraints;
  Clip? _clipBehavior;
  double? _maxheight;
  double? _minheight;
  double? _maxwidth;
  double? _minwidth;
  BoxDecoration? _foregroundDecoration;
  EdgeInsetsGeometry? _margin;
  EdgeInsetsGeometry? _padding;
  Matrix4? _transform;
  Key? _key;

  BorderRadiusGeometry? _borderRadius;
  BlendMode? _backgroundBlendMode;
  BoxBorder? _border;
  Color? _color;
  List<BoxShadow>? _boxShadow;
  Gradient? _gradient;
  DecorationImage? _image;
  BoxShape _shape = BoxShape.rectangle;

  /// The function `curveCorners` sets the border radius of a box to a specified value.
  ///
  /// Args:
  ///   rad (double): The `rad` parameter is a double that represents the radius value for the border
  /// corners. It is set to a default value of 20 if no value is provided when calling the
  /// `curveCorners` method. Defaults to 20
  @override
  Box curveCorners({double rad = 20}) =>
      this.._borderRadius = BorderRadius.circular(rad);

  /// The function sets the border radius of a box to have only the top corners curved.
  ///
  /// Args:
  ///   rad (double): The `rad` parameter is a double that represents the radius value for the top
  /// corners of the box. It is used to create a `BorderRadius` object with a vertical radius value for
  /// the top corners. Defaults to 20
  @override
  Box curveOnlyTopCorners({double rad = 20}) =>
      this.._borderRadius = BorderRadius.vertical(top: Radius.circular(rad));

  /// The function `curveOnly` sets the border radius of a box to different values for each corner.
  ///
  /// Args:
  ///   bl (double): The parameter "bl" stands for "bottom left" and it represents the radius of the
  /// bottom left corner of the box. Defaults to 0
  ///   br (double): The parameter "br" stands for "bottom right" and it represents the radius of the
  /// bottom right corner of the box. Defaults to 0
  ///   tl (double): The `tl` parameter represents the top left corner radius of the box. Defaults to 0
  ///   tr (double): The parameter "tr" stands for "topRight" and it represents the radius of the top
  /// right corner of the box. Defaults to 0
  @override
  Box curveOnly({
    double bl = 0,
    double br = 0,
    double tl = 0,
    double tr = 0,
  }) =>
      this
        .._borderRadius = BorderRadius.only(
          bottomLeft: Radius.circular(bl),
          bottomRight: Radius.circular(br),
          topLeft: Radius.circular(tl),
          topRight: Radius.circular(tr),
        );

  /// The function sets the border radius of a box to have only rounded corners at the bottom.
  ///
  /// Args:
  ///   rad (double): The `rad` parameter is a double that represents the radius value for the bottom
  /// corners of the box. It is set to a default value of 20 if no value is provided when calling the
  /// method. Defaults to 20
  @override
  Box curveOnlyBottomCorners({double rad = 20}) =>
      this.._borderRadius = BorderRadius.vertical(bottom: Radius.circular(rad));

  /// The function `bgBlndMode` sets the background blend mode of a box in Dart.
  ///
  /// Args:
  ///   blndmod (BlendMode): The parameter "blndmod" is of type BlendMode. It represents the blend mode
  /// to be applied to the background of a box.
  @override
  Box bgBlndMode(BlendMode blndmod) => this.._backgroundBlendMode = blndmod;

  /// The function sets the box shadows for a widget.
  ///
  /// Args:
  ///   boxShadow (List<BoxShadow>): The parameter "boxShadow" is a list of BoxShadow objects.
  @override
  Box shadows(List<BoxShadow>? boxShadow) => this.._boxShadow = boxShadow;

  /// The function sets the border color of a box.
  ///
  /// Args:
  ///   color (Color): The "color" parameter is of type "Color" and represents the color of the border.
  @override
  Box brdrCol(Color color) => this.._border = Border.all(color: color);

  /// The function sets the color of a box.
  ///
  /// Args:
  ///   color (Color): The "color" parameter is of type "Color".
  @override
  Box col(Color color) => this.._color = color;

  /// The function grdnt sets the gradient property of the Box object.
  ///
  /// Args:
  ///   gradient (Gradient): The "gradient" parameter is of type "Gradient". It is used to set the
  /// gradient for the box.
  @override
  Box grdnt(Gradient gradient) => this.._gradient = gradient;

  /// The function sets the shape of a box.
  ///
  /// Args:
  ///   shape (BoxShape): The "shape" parameter is of type BoxShape, which is an enum that represents
  /// different shapes for a box.
  @override
  Box shape(BoxShape shape) => this.._shape = shape;

  /// The function sets the decoration image for a box.
  ///
  /// Args:
  ///   image (DecorationImage): The `image` parameter is of type `DecorationImage`. It represents the
  /// image to be displayed as the background image of the `Box` widget.
  @override
  Box img(DecorationImage image) => this.._image = image;

  Box _setClipBehaviour(Clip clip) => this.._clipBehavior = clip;

  Box _setMargin(double p, {double? l, double? r, double? t, double? b}) =>
      this.._padding = EdgeInsets.fromLTRB(l ?? p, t ?? p, r ?? p, b ?? p);
  Box _setPadding(double p, {double? l, double? r, double? t, double? b}) =>
      this.._padding = EdgeInsets.fromLTRB(l ?? p, t ?? p, r ?? p, b ?? p);

  /// This method sets the `clipBehavior` property of the `Box` object to `Clip.antiAlias`.
  Box get antilas => _setClipBehaviour(Clip.antiAlias);

  /// This method sets the `clipBehavior` property of the `Box` object to `Clip.antiAliasWithSaveLayer`.
  Box get antilsWtSvLyr => _setClipBehaviour(Clip.antiAliasWithSaveLayer);

  /// It sets the padding of the `Box` object to 12 pixels on all sides.
  Box get p12 => _setPadding(12);

  /// It sets the padding of the `Box` object to 16 pixels on all sides.
  Box get p16 => _setPadding(16);

  /// It sets the padding of the `Box` object to 20 pixels on all sides.
  Box get p20 => _setPadding(20);

  /// It sets the padding of the `Box` object to 24 pixels on all sides.
  Box get p24 => _setPadding(24);

  /// It sets the margin of the `Box` object to 12 pixels on all sides.
  Box get m12 => _setMargin(12);

  /// It sets the margin of the `Box` object to 16 pixels on all sides.
  Box get m16 => _setMargin(16);

  /// It sets the margin of the `Box` object to 20 pixels on all sides.
  Box get m20 => _setMargin(20);

  /// It sets the margin of the `Box` object to 24 pixels on all sides.
  Box get m24 => _setMargin(24);

  /// The function `clpbhv` sets the clip behavior for a given clip.
  ///
  /// Args:
  ///   clip (Clip): The "clip" parameter is of type "Clip".
  Box clpbhv(Clip clip) => _setClipBehaviour(clip);

  /// The function returns a Box object with the specified margin value.
  ///
  /// Args:
  ///   mrgn (double): The parameter "mrgn" is of type double and represents the margin value.
  Box mrgn(double mrgn) => _setMargin(mrgn);

  /// The function returns a Box with the specified padding value.
  ///
  /// Args:
  ///   p (double): The parameter "p" is of type double.
  Box p(double p) => _setPadding(p);

  /// The function `algn` sets the alignment value of a box.
  ///
  /// Args:
  ///   al (Al): The parameter "al" is of type "Al".
  Box algn(Al al) => this.._alignment = al.value;

  /// The function "h" sets the height of a box object.
  ///
  /// Args:
  ///   height (double): The height parameter is a double value that represents the height of a box.
  Box h(double height) => this.._height = height;

  /// The function "w" returns a Box object with a specified width.
  ///
  /// Args:
  ///   width (double): The width of the box.
  Box w(double width) => this.._width = width;

  /// The function `tralgn` sets the value of `_transformalignment` to the value of `al.value`.
  ///
  /// Args:
  ///   al (Al): The parameter "al" is an object that represents the alignment value.
  Box tralgn(Al al) => this.._transformalignment = al.value;

  /// The function `trnsfm` takes a `Matrix4` object as a parameter and assigns it to the `_transform`
  /// property of the current object.
  ///
  /// Args:
  ///   trnsfm (Matrix4): The trnsfm parameter is of type Matrix4. It is used to represent a 4x4
  /// transformation matrix that can be applied to a box object.
  Box trnsfm(Matrix4 trnsfm) => this.._transform = trnsfm;

  /// The function "key" sets the value of the private variable "_key" in the current object and returns
  /// the updated object.
  ///
  /// Args:
  ///   key (Key): The key parameter is of type Key.
  Box key(Key key) => this.._key = key;

  /// The function `fgndDecor` sets the foreground decoration of a box.
  ///
  /// Args:
  ///   decoration (BoxDecoration): The "decoration" parameter is of type BoxDecoration. It is used to
  /// specify the visual appearance of the foreground of a box.
  Box fgndDecor(BoxDecoration decoration) =>
      this.._foregroundDecoration = decoration;

  /// The function "cons" sets the constraints of a box.
  ///
  /// Args:
  ///   constraints (BoxConstraints): The "constraints" parameter is of type BoxConstraints. It
  /// represents the constraints that are applied to a widget. These constraints define the minimum and
  /// maximum width and height that the widget can have.
  Box cons(BoxConstraints constraints) => this.._constraints = constraints;

  /// The function sets the maximum height of a box.
  ///
  /// Args:
  ///   mxH (double): The parameter "mxH" represents the maximum height of a box.
  Box mxH(double mxH) => this.._maxheight = mxH;

  /// The function sets the minimum height of a box.
  ///
  /// Args:
  ///   miH (double): The parameter "miH" is of type double and represents the minimum height of a box.
  Box miH(double miH) => this.._minheight = miH;

  /// The function `mxW` sets the maximum width of a box.
  ///
  /// Args:
  ///   mxW (double): The parameter "mxW" is of type double and represents the maximum width of a box.
  Box mxW(double mxW) => this.._maxwidth = mxW;

  /// The above function sets the minimum width of a box.
  ///
  /// Args:
  ///   miW (double): The parameter "miW" represents the minimum width of a box.
  Box miW(double miW) => this.._minwidth = miW;

  /// The function creates a Container widget with various properties and returns it.
  ///
  /// Returns:
  ///   The method is returning a Container widget.
  @override
  Container create() {
    return Container(
      decoration: BoxDecoration(
        backgroundBlendMode: _backgroundBlendMode,
        border: _border,
        borderRadius: _borderRadius,
        boxShadow: _boxShadow,
        color: _color,
        gradient: _gradient,
        image: _image,
        shape: _shape,
      ),
      height: _height,
      width: _width,
      alignment: _alignment,
      transformAlignment: _transformalignment,
      margin: _margin,
      padding: _padding,
      transform: _transform,
      clipBehavior: _clipBehavior ?? Clip.none,
      foregroundDecoration: _foregroundDecoration,
      constraints: _constraints ??
          BoxConstraints(
            maxHeight: _maxheight ?? double.infinity,
            maxWidth: _maxwidth ?? double.infinity,
            minHeight: _minheight ?? 0.0,
            minWidth: _minwidth ?? 0.0,
          ),
      key: _key,
      child: child,
    );
  }

  /// The function creates an Ink widget with various properties and returns it.
  ///
  /// Returns:
  ///   an Ink widget.
  Ink createInk() {
    return Ink(
      decoration: BoxDecoration(
        backgroundBlendMode: _backgroundBlendMode,
        border: _border,
        borderRadius: _borderRadius,
        boxShadow: _boxShadow,
        color: _color,
        gradient: _gradient,
        image: _image,
        shape: _shape,
      ),
      height: _height,
      width: _width,
      padding: _padding,
      key: _key,
      child: child,
    );
  }
}
