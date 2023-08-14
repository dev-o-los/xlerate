// ignore_for_file: constant_identifier_names

const shape_creator_error_msg = '''Select a type of Shape Border
How it should be:

Shaper.instance.roundedrectbrdr.curvBL10.curvBR15.create();

How it is:

Shaper.instance.curvBL10.curvBR15.create();

''';

const no_such_shape_error_msg = 'No such Shape Border Found';

const borderRadius_error_msg = '''Since you are using Stadium Border

Consider not to use BorderRadius params,

as Stadium border does not have any border radius parameter''';
