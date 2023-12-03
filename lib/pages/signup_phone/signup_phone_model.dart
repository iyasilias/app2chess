import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'signup_phone_widget.dart' show SignupPhoneWidget;
import 'package:flutter/material.dart';

class SignupPhoneModel extends FlutterFlowModel<SignupPhoneWidget> {
  ///  Local state fields for this page.

  bool? emailOK = false;

  bool passwordOK = false;

  bool nameOK = false;

  bool icOK = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberController;
  String? Function(BuildContext, String?)? phoneNumberControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for password2 widget.
  FocusNode? password2FocusNode;
  TextEditingController? password2Controller;
  late bool password2Visibility;
  String? Function(BuildContext, String?)? password2ControllerValidator;
  // State field(s) for nama widget.
  FocusNode? namaFocusNode;
  TextEditingController? namaController;
  String? Function(BuildContext, String?)? namaControllerValidator;
  // State field(s) for ic widget.
  FocusNode? icFocusNode;
  TextEditingController? icController;
  String? Function(BuildContext, String?)? icControllerValidator;
  // State field(s) for DropDown widget.
  int? dropDownValue;
  FormFieldController<int>? dropDownValueController;
  // Stores action output result for [Backend Call - API (Search IC)] action in Button widget.
  ApiCallResponse? icSearchResult;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    password2Visibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    phoneNumberFocusNode?.dispose();
    phoneNumberController?.dispose();

    passwordFocusNode?.dispose();
    passwordController?.dispose();

    password2FocusNode?.dispose();
    password2Controller?.dispose();

    namaFocusNode?.dispose();
    namaController?.dispose();

    icFocusNode?.dispose();
    icController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
