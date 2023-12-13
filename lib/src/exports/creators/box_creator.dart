import 'package:flutter/widgets.dart';
import 'package:xlerate/src/private/mixins/decoration_mixin.dart';
import 'package:xlerate/src/private/mixins/create_mixin.dart';
import 'package:xlerate/xlerate.dart';

@protected
class Box implements CreateMixin<Container>, DecorationMixin<Box> {
  Box._();

  static double? _height;
  static double? _width;

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
  Widget? _child;
  Key? _key;

  BorderRadiusGeometry? _borderRadius;
  BlendMode? _backgroundBlendMode;
  BoxBorder? _border;
  Color? _color;
  List<BoxShadow>? _boxShadow;
  Gradient? _gradient;
  DecorationImage? _image;
  BoxShape _shape = BoxShape.rectangle;

  @override
  Box curveCorners({double rad = 20}) =>
      this.._borderRadius = BorderRadius.circular(rad);

  @override
  Box curveOnlyTopCorners({double rad = 20}) =>
      this.._borderRadius = BorderRadius.vertical(top: Radius.circular(rad));

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

  @override
  Box curveOnlyBottomCorners({double rad = 20}) =>
      this.._borderRadius = BorderRadius.vertical(bottom: Radius.circular(rad));

  @override
  Box bgBlndMode(BlendMode blndmod) => this.._backgroundBlendMode = blndmod;

  @override
  Box shadows(List<BoxShadow>? boxShadow) => this.._boxShadow = boxShadow;

  @override
  Box brdrCol(Color color) => this.._border = Border.all(color: color);

  @override
  Box col(Color color) => this.._color = color;

  @override
  Box grdnt(Gradient gradient) => this.._gradient = gradient;

  @override
  Box shape(BoxShape shape) => this.._shape = shape;

  @override
  Box img(DecorationImage image) => this.._image = image;

  static Box hw(double h, double w) {
    _width = w;
    _height = h;
    return Box._();
  }

  Box _setClipBehaviour(Clip clip) => this.._clipBehavior = clip;
  Box _setMargin(double p, {double? l, double? r, double? t, double? b}) =>
      this.._padding = EdgeInsets.fromLTRB(l ?? p, t ?? p, r ?? p, b ?? p);
  Box _setPadding(double p, {double? l, double? r, double? t, double? b}) =>
      this.._padding = EdgeInsets.fromLTRB(l ?? p, t ?? p, r ?? p, b ?? p);

  Box get antilas => _setClipBehaviour(Clip.antiAlias);
  Box get antilsWtSvLyr => _setClipBehaviour(Clip.antiAliasWithSaveLayer);
  Box get p12 => _setPadding(12);
  Box get p16 => _setPadding(16);
  Box get p20 => _setPadding(20);
  Box get p24 => _setPadding(24);

  Box get m12 => _setMargin(12);
  Box get m16 => _setMargin(16);
  Box get m20 => _setMargin(20);
  Box get m24 => _setMargin(24);

  Box clpbhv(Clip clip) => _setClipBehaviour(clip);
  Box mrgn(double mrgn) => _setMargin(mrgn);
  Box p(double p) => _setPadding(p);

  Box chld(Widget child) => this.._child = child;
  Box algn(Al al) => this.._alignment = al.value;
  Box tralgn(Al al) => this.._transformalignment = al.value;
  Box trnsfm(Matrix4 trnsfm) => this.._transform = trnsfm;
  Box key(Key key) => this.._key = key;
  Box fgndDecor(BoxDecoration decoration) =>
      this.._foregroundDecoration = decoration;

  Box cons(BoxConstraints constraints) => this.._constraints = constraints;
  Box mxH(double mxH) => this.._maxheight = mxH;
  Box miH(double miH) => this.._minheight = miH;
  Box mxW(double mxW) => this.._maxwidth = mxW;
  Box miW(double miW) => this.._minwidth = miW;

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
      child: _child,
    );
  }
}
