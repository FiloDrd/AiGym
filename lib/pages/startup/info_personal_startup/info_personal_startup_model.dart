import '/flutter_flow/flutter_flow_util.dart';
import 'info_personal_startup_widget.dart' show InfoPersonalStartupWidget;
import 'package:flutter/material.dart';

class InfoPersonalStartupModel
    extends FlutterFlowModel<InfoPersonalStartupWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? ageText;
  String? Function(BuildContext, String?)? ageTextValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? heightText;
  String? Function(BuildContext, String?)? heightTextValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? weightText;
  String? Function(BuildContext, String?)? weightTextValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    ageText?.dispose();

    textFieldFocusNode2?.dispose();
    heightText?.dispose();

    textFieldFocusNode3?.dispose();
    weightText?.dispose();
  }
}
