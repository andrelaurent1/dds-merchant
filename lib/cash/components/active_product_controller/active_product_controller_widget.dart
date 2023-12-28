import '/cash/components/confirm_activate_product/confirm_activate_product_widget.dart';
import '/cash/components/confirm_inactivate_product/confirm_inactivate_product_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'active_product_controller_model.dart';
export 'active_product_controller_model.dart';

class ActiveProductControllerWidget extends StatefulWidget {
  const ActiveProductControllerWidget({
    Key? key,
    bool? isActive,
    String? productID,
  })  : this.isActive = isActive ?? false,
        this.productID = productID ?? 'blank',
        super(key: key);

  final bool isActive;
  final String productID;

  @override
  _ActiveProductControllerWidgetState createState() =>
      _ActiveProductControllerWidgetState();
}

class _ActiveProductControllerWidgetState
    extends State<ActiveProductControllerWidget> {
  late ActiveProductControllerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ActiveProductControllerModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        if (widget.isActive)
          Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: Switch.adaptive(
              value: _model.activeSwitchValue ??= widget.isActive,
              onChanged: (newValue) async {
                setState(() => _model.activeSwitchValue = newValue!);

                if (!newValue!) {
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    enableDrag: false,
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: MediaQuery.viewInsetsOf(context),
                        child: ConfirmInactivateProductWidget(
                          productID: widget.productID,
                        ),
                      );
                    },
                  ).then((value) => safeSetState(() {}));

                  setState(() {
                    _model.activeSwitchValue = true;
                  });
                }
              },
              activeColor: FlutterFlowTheme.of(context).primary,
              activeTrackColor: FlutterFlowTheme.of(context).accent2,
              inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
              inactiveThumbColor: FlutterFlowTheme.of(context).secondaryText,
            ),
          ),
        if (widget.isActive == false)
          Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: Switch.adaptive(
              value: _model.inactiveSwitchValue ??= widget.isActive,
              onChanged: (newValue) async {
                setState(() => _model.inactiveSwitchValue = newValue!);
                if (newValue!) {
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    enableDrag: false,
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: MediaQuery.viewInsetsOf(context),
                        child: ConfirmActivateProductWidget(
                          productID: widget.productID,
                        ),
                      );
                    },
                  ).then((value) => safeSetState(() {}));

                  setState(() {
                    _model.inactiveSwitchValue = false;
                  });
                }
              },
              activeColor: FlutterFlowTheme.of(context).primary,
              activeTrackColor: FlutterFlowTheme.of(context).accent2,
              inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
              inactiveThumbColor: FlutterFlowTheme.of(context).secondaryText,
            ),
          ),
      ],
    );
  }
}
