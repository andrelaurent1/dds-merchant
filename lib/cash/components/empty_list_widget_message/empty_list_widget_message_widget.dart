import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'empty_list_widget_message_model.dart';
export 'empty_list_widget_message_model.dart';

class EmptyListWidgetMessageWidget extends StatefulWidget {
  const EmptyListWidgetMessageWidget({Key? key}) : super(key: key);

  @override
  _EmptyListWidgetMessageWidgetState createState() =>
      _EmptyListWidgetMessageWidgetState();
}

class _EmptyListWidgetMessageWidgetState
    extends State<EmptyListWidgetMessageWidget> {
  late EmptyListWidgetMessageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyListWidgetMessageModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        'There is currently no item',
        style: FlutterFlowTheme.of(context).titleMedium,
      ),
    );
  }
}
