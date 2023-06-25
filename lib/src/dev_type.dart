import 'package:simple_sizer/simple_sizer.dart';

class DvType {
  ({bool isM, bool isT, bool isD, bool isTV}) dvType() {
    final sw = 100.w;

    return (
      isM: (sw <= 451),
      isT: (sw >= 451 && sw <= 800),
      isD: (sw >= 801 && sw <= 1920),
      isTV: (sw >= 1921),
    );
  }
}
