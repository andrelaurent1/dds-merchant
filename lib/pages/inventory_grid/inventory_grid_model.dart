import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/cash/components/active_product_controller/active_product_controller_widget.dart';
import '/cash/components/master_side_nav/master_side_nav_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'inventory_grid_widget.dart' show InventoryGridWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InventoryGridModel extends FlutterFlowModel<InventoryGridWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MasterSideNav component.
  late MasterSideNavModel masterSideNavModel1;
  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue;
  FormFieldController<List<String>>? choiceChipsValueController;
  // Models for ActiveProductController dynamic component.
  late FlutterFlowDynamicModels<ActiveProductControllerModel>
      activeProductControllerModels1;
  // Models for ActiveProductController dynamic component.
  late FlutterFlowDynamicModels<ActiveProductControllerModel>
      activeProductControllerModels2;
  // Model for MasterSideNav component.
  late MasterSideNavModel masterSideNavModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    masterSideNavModel1 = createModel(context, () => MasterSideNavModel());
    activeProductControllerModels1 =
        FlutterFlowDynamicModels(() => ActiveProductControllerModel());
    activeProductControllerModels2 =
        FlutterFlowDynamicModels(() => ActiveProductControllerModel());
    masterSideNavModel2 = createModel(context, () => MasterSideNavModel());
  }

  void dispose() {
    unfocusNode.dispose();
    masterSideNavModel1.dispose();
    activeProductControllerModels1.dispose();
    activeProductControllerModels2.dispose();
    masterSideNavModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
