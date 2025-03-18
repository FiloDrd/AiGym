import '/flutter_flow/flutter_flow_util.dart';
import 'equipment_selection_widget.dart' show EquipmentSelectionWidget;
import 'package:flutter/material.dart';

class EquipmentSelectionModel
    extends FlutterFlowModel<EquipmentSelectionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
