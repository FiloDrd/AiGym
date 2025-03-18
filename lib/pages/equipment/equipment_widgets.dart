import 'package:ai_gym/flutter_flow/flutter_flow_theme.dart';
import 'package:ai_gym/pages/equipment/equipments.dart';
import 'package:flutter/material.dart';

class EquipmentColumn extends StatelessWidget {
  EquipmentColumn({super.key, required this.isCali});
  final bool isCali;
  final int rowElements = 3;
  //TODO Da sistemare la logica
  @override
  Widget build(BuildContext context) {
    List<Equipment> enumValues =
        Equipment.values //Controlla se è calisthenics altrimenti non rilascia
            .where((e) => (isCali == (e.type == EquipmentType.calisthenics)))
            .toList();

    // Dividi i valori in gruppi di 3 per riga
    List<List<Equipment>> rows = [];
    for (int i = 0; i < enumValues.length; i += 3) {
      int end = i + 3;
      if (end > enumValues.length) {
        end = enumValues.length;
      }
      rows.add(enumValues.sublist(i, end));
    }
    return Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...rows.map((rowValues) {
            //Per ogni terna crea una riga

            return Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Per ogni elemento della riga crea un widget personalizzato
                  ...rowValues.map((e) => EquipmentBox(equipment: e)),
                ],
              ),
            );
          })
        ]);
  }
}

class EquipmentBox extends StatefulWidget {
  final Equipment equipment;

  EquipmentBox({super.key, required this.equipment});

  @override
  State<EquipmentBox> createState() => _EquipmentBoxState();
}

class _EquipmentBoxState extends State<EquipmentBox> {
  bool isSelected = false;
  final Duration duration = Durations.medium1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: duration,
              width: 100.0,
              height: 120.0,
              decoration: BoxDecoration(
                color: (isSelected)
                    ? FlutterFlowTheme.of(context).primary
                    : FlutterFlowTheme.of(context).alternate,
                borderRadius: BorderRadius.circular(12.0),
              ),
              alignment: AlignmentDirectional(0.0, -1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.network(
                          widget.equipment.imageLink.isEmpty
                              ? 'https://images.unsplash.com/photo-1657803778187-187c5f625f4e?w=1280&h=720'
                              : widget.equipment.imageLink,
                          width: 60.0,
                          height: 60.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AnimatedDefaultTextStyle(
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Manrope',
                                    color: (isSelected)
                                        ? Colors.white
                                        : FlutterFlowTheme.of(context)
                                            .primaryText,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                              duration: duration,
                              child: Text(
                                widget.equipment.name,
                                textAlign: TextAlign.center,
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
