///'xlerate_web' is the andother core dependency of this package and is usually imported when dealing with flutter web.
///It includes `clampInRange` methods ,`reactive widgets`, and `size_config_web`.
///mainly used in [Flutter Web].
library xlerate_web;

//From Folder creators
export 'src/exports/creators/text_creator.dart';
export 'src/exports/creators/decoration_creator.dart';
export 'src/exports/creators/shape_creator.dart';
export 'src/exports/creators/box_creator.dart';

//From Folder enums
export 'src/exports/enums/text_align_enum.dart';
export 'src/exports/enums/align_cntr_enum.dart';

//From Folder flutter-widgets
export 'src/exports/extensions/build_ctx.dart';
export 'src/exports/extensions/flutter_widget_ext.dart';
//From Folder data-types
export 'src/exports/extensions/data-types/bool_ext.dart';
export 'src/exports/extensions/data-types/string_ext.dart';
export 'src/exports/extensions/data-types/int_ext.dart';
export 'src/exports/extensions/data-types/connection_state_ext.dart';
export 'src/exports/extensions/data-types/date_time_ext.dart';

//From Folder helper_methods
export 'src/exports/helper_methods/border_rad_helper.dart';

//Clamp dimensions
export 'src/exports/helper_methods/clamp_dimensions_helper.dart';

//Reactive Widgets
export 'src/exports/reactive_widgets/reactive_destination.dart';
export 'src/exports/reactive_widgets/reactive_row_col.dart';
export 'src/exports/reactive_widgets/reactive_home.dart';

//Size Config web
export 'src/exports/responsiveness/size_config_web.dart';
