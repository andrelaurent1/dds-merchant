import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'edit_wrong_input_inventory_widget.dart'
    show EditWrongInputInventoryWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditWrongInputInventoryModel
    extends FlutterFlowModel<EditWrongInputInventoryWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for productName widget.
  FocusNode? productNameFocusNode;
  TextEditingController? productNameController;
  String? Function(BuildContext, String?)? productNameControllerValidator;
  // State field(s) for quantity widget.
  int? quantityValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    productNameFocusNode?.dispose();
    productNameController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
