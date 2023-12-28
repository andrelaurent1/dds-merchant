import '/backend/supabase/supabase.dart';
import '/cash/components/master_side_nav/master_side_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'manage_inventory_widget.dart' show ManageInventoryWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ManageInventoryModel extends FlutterFlowModel<ManageInventoryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MasterSideNav component.
  late MasterSideNavModel masterSideNavModel;
  // State field(s) for productName widget.
  FocusNode? productNameFocusNode;
  TextEditingController? productNameController;
  String? Function(BuildContext, String?)? productNameControllerValidator;
  // State field(s) for categoryName widget.
  FocusNode? categoryNameFocusNode;
  TextEditingController? categoryNameController;
  String? Function(BuildContext, String?)? categoryNameControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    masterSideNavModel = createModel(context, () => MasterSideNavModel());
  }

  void dispose() {
    unfocusNode.dispose();
    masterSideNavModel.dispose();
    productNameFocusNode?.dispose();
    productNameController?.dispose();

    categoryNameFocusNode?.dispose();
    categoryNameController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
