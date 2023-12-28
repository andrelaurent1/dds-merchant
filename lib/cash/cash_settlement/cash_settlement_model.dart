import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/cash/components/enter_p_i_n/enter_p_i_n_widget.dart';
import '/cash/components/master_side_nav/master_side_nav_widget.dart';
import '/cash/transaction_successfull_pop_up/transaction_successfull_pop_up_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'cash_settlement_widget.dart' show CashSettlementWidget;
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CashSettlementModel extends FlutterFlowModel<CashSettlementWidget> {
  ///  Local state fields for this page.

  double? settlementTotal = 0.0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MasterSideNav component.
  late MasterSideNavModel masterSideNavModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for revenue widget.
  FocusNode? revenueFocusNode;
  TextEditingController? revenueController;
  String? Function(BuildContext, String?)? revenueControllerValidator;
  // State field(s) for profitSharing widget.
  FocusNode? profitSharingFocusNode;
  TextEditingController? profitSharingController;
  String? Function(BuildContext, String?)? profitSharingControllerValidator;
  // State field(s) for cashOutAmount widget.
  FocusNode? cashOutAmountFocusNode;
  TextEditingController? cashOutAmountController;
  String? Function(BuildContext, String?)? cashOutAmountControllerValidator;
  // State field(s) for Message widget.
  FocusNode? messageFocusNode;
  TextEditingController? messageController;
  String? Function(BuildContext, String?)? messageControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    masterSideNavModel = createModel(context, () => MasterSideNavModel());
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
  }

  void dispose() {
    unfocusNode.dispose();
    masterSideNavModel.dispose();
    tabBarController?.dispose();
    revenueFocusNode?.dispose();
    revenueController?.dispose();

    profitSharingFocusNode?.dispose();
    profitSharingController?.dispose();

    cashOutAmountFocusNode?.dispose();
    cashOutAmountController?.dispose();

    messageFocusNode?.dispose();
    messageController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
