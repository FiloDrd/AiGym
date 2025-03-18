import '/flutter_flow/flutter_flow_util.dart';
import 'training_style_widget.dart' show TrainingStyleWidget;
import 'package:flutter/material.dart';

class TrainingStyleModel extends FlutterFlowModel<TrainingStyleWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
