import '/cash/components/confirm_activate_product/confirm_activate_product_widget.dart';
import '/cash/components/confirm_inactivate_product/confirm_inactivate_product_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'active_product_controller_widget.dart'
    show ActiveProductControllerWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ActiveProductControllerModel
    extends FlutterFlowModel<ActiveProductControllerWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for ActiveSwitch widget.
  bool? activeSwitchValue;
  // State field(s) for InactiveSwitch widget.
  bool? inactiveSwitchValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
