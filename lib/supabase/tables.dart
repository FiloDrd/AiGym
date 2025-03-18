import 'package:flutter/material.dart';

enum Tables {
  userPersonalData(name: "user_personal_data");

  const Tables({required this.name});
  final String name;
}

enum StyleTraining { cali, hybrid, weights }

enum FitLevel { beginner, intermediate, advanced, pro }

class TableData {
  String? id;
  String? height;
  String? weight;
  StyleTraining? trainingStyle;
  FitLevel? level;
  int? bench;
  int? squat;
  int? deadlift;
  int? pushups;
  int? pullups;
  int? dips;
  TableData(this.bench, this.id);
}
