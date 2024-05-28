import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class Preference {
  static late Box _box;

  static void initialize() async {
    // Used to initialize app directory
    Hive.defaultDirectory = (await getApplicationDocumentsDirectory()).path;
    _box = Hive.box(name: 'Data');
  }


//Getters
  static bool get showOnboard => _box.get('showOnboard', defaultValue: true);

  //Setters
  static  set showOnboard(bool value)=> _box.put('showOnboard', value);
}
