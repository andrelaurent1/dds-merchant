import '/backend/supabase/supabase.dart';
import '/cash/components/master_side_nav/master_side_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'manage_inventory_forms_widget.dart' show ManageInventoryFormsWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ManageInventoryFormsModel
    extends FlutterFlowModel<ManageInventoryFormsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MasterSideNav component.
  late MasterSideNavModel masterSideNavModel1;
  // State field(s) for productName widget.
  FocusNode? productNameFocusNode;
  TextEditingController? productNameController;
  String? Function(BuildContext, String?)? productNameControllerValidator;
  // State field(s) for categoryName widget.
  FocusNode? categoryNameFocusNode;
  TextEditingController? categoryNameController;
  String? Function(BuildContext, String?)? categoryNameControllerValidator;
  // State field(s) for price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceController;
  String? Function(BuildContext, String?)? priceControllerValidator;
  // State field(s) for NewPurchaseQty widget.
  int? newPurchaseQtyValue;
  // State field(s) for quantity widget.
  int? quantityValue;
  // State field(s) for newPrice widget.
  FocusNode? newPriceFocusNode;
  TextEditingController? newPriceController;
  String? Function(BuildContext, String?)? newPriceControllerValidator;
  // State field(s) for totalAmount widget.
  FocusNode? totalAmountFocusNode;
  TextEditingController? totalAmountController;
  String? Function(BuildContext, String?)? totalAmountControllerValidator;
  // Model for MasterSideNav component.
  late MasterSideNavModel masterSideNavModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    masterSideNavModel1 = createModel(context, () => MasterSideNavModel());
    masterSideNavModel2 = createModel(context, () => MasterSideNavModel());
  }

  void dispose() {
    unfocusNode.dispose();
    masterSideNavModel1.dispose();
    productNameFocusNode?.dispose();
    productNameController?.dispose();

    categoryNameFocusNode?.dispose();
    categoryNameController?.dispose();

    priceFocusNode?.dispose();
    priceController?.dispose();

    newPriceFocusNode?.dispose();
    newPriceController?.dispose();

    totalAmountFocusNode?.dispose();
    totalAmountController?.dispose();

    masterSideNavModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
