enum EquipmentType {
  calisthenics(name: "calisthenics"),
  weight(name: "weight"),
  machine(name: "machine");

  const EquipmentType({
    required this.name,
  });

  final String name;

  String getName() {
    return name;
  }
}

//Tutte le immagini devono essere salvate localmente
enum Equipment {
  treadmill(
    name: "treadmill",
    type: EquipmentType.machine,
    imageLink: "",
  ),
  dumbbells(
    name: "Dumbbells",
    type: EquipmentType.weight,
    imageLink: "",
  ),
  exerciseBike(
    name: "Exercise bike",
    type: EquipmentType.machine,
    imageLink: "",
  ),
  yogaMat(
    name: "Yoga mat",
    type: EquipmentType.calisthenics,
    imageLink: "",
  ),
  pullupBar(
    name: "Pullup bar",
    type: EquipmentType.calisthenics,
    imageLink: "",
  );

  const Equipment({
    required this.name,
    required this.type,
    required this.imageLink,
  });
  final String name;
  final String imageLink;
  final EquipmentType type;
}
