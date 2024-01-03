import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/cash/components/master_side_nav/master_side_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MasterSideNav component.
  late MasterSideNavModel masterSideNavModel1;
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
    masterSideNavModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
