import '/flutter_flow/flutter_flow_util.dart';
import 'reset_widget.dart' show ResetWidget;
import 'package:flutter/material.dart';

class ResetModel extends FlutterFlowModel<ResetWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getAccessToken] action in Reset widget.
  dynamic param;
  // State field(s) for password1 widget.
  FocusNode? password1FocusNode;
  TextEditingController? password1Controller;
  late bool password1Visibility;
  String? Function(BuildContext, String?)? password1ControllerValidator;
  // State field(s) for password2 widget.
  FocusNode? password2FocusNode;
  TextEditingController? password2Controller;
  late bool password2Visibility;
  String? Function(BuildContext, String?)? password2ControllerValidator;
  // Stores action output result for [Custom Action - updateSupabasePassword] action in Button-Login widget.
  bool? updateResult;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    password1Visibility = false;
    password2Visibility = false;
  }

  @override
  void dispose() {
    password1FocusNode?.dispose();
    password1Controller?.dispose();

    password2FocusNode?.dispose();
    password2Controller?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
