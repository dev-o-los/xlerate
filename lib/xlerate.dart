///'simple_sizer' is the core dependency of this package and is usually imported for `extensions` `text-creators` and etc.
///mainly used in android and ios apps [Mobile].
library xlerate;

//From Folder creators
export 'src/exports/creators/text_creator.dart';
export 'src/exports/creators/decoration_creator.dart';
export 'src/exports/creators/shape_creator.dart';
export 'src/exports/creators/box_creator.dart';

//From Folder enums
export 'src/exports/enums/text_align_enum.dart';
export 'src/exports/enums/align_cntr_enum.dart';

//From Folder flutter-widgets
export 'src/exports/extensions/flutter_widget_ext.dart';
export 'src/exports/extensions/build_ctx.dart';

//From Folder data-types
export 'src/exports/extensions/data-types/bool_ext.dart';
export 'src/exports/extensions/data-types/string_ext.dart';
export 'src/exports/extensions/data-types/int_ext.dart';
export 'src/exports/extensions/data-types/connection_state_ext.dart';
export 'src/exports/extensions/data-types/date_time_ext.dart';

//From Folder helper_methods
export 'src/exports/helper_methods/border_rad_helper.dart';

//Size Config webs
export 'src/exports/responsiveness/size_config.dart';
