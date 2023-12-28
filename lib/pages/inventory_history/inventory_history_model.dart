import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/cash/components/edit_wrong_input_inventory/edit_wrong_input_inventory_widget.dart';
import '/cash/components/empty_list_widget_message/empty_list_widget_message_widget.dart';
import '/cash/components/master_side_nav/master_side_nav_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'inventory_history_widget.dart' show InventoryHistoryWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InventoryHistoryModel extends FlutterFlowModel<InventoryHistoryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MasterSideNav component.
  late MasterSideNavModel masterSideNavModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue;
  FormFieldController<List<String>>? choiceChipsValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    masterSideNavModel = createModel(context, () => MasterSideNavModel());
  }

  void dispose() {
    unfocusNode.dispose();
    masterSideNavModel.dispose();
    tabBarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
