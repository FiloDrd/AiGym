enum Pages {
  init(name: "_initialize", path: "/"),
  welcome(name: "Welcome", path: "/welcome"),
  personalInfo(name: "Info_Personal_Startup", path: "/infoPersonalStartup"),
  equipmentOrNot(name: 'Equipment_o_not', path: '/equipmentONot'),
  equipmentSelection(name: 'Equipment_Selection', path: '/equipmentSelection'),
  trainingStyle(name: 'Training_Style', path: '/trainingStyle'),
  caliEquipment(name: 'Calisthenics_equipment', path: '/calisthenicsEquipment'),
  fitLevel(name: 'Fitness_Level', path: '/fitnessLevel'),
  logIn(name: 'LogIn', path: '/logIn'),
  signUp(name: 'SignUp', path: '/signUp'),
  splash(name: 'splashScreen', path: '/splashScreen'),
  home(name: 'HomePage', path: '/homePage');

  const Pages({
    required this.name,
    required this.path,
  });

  final String name;
  final String path;
}
