import 'package:flutter_modular/flutter_modular.dart';

import 'home/home.dart';
import 'main_module_paths.dart';

class MainModuleRouting extends Module {
  @override
  void routes(RouteManager r) {
    r.module(MainModulePaths.root, module: HomeModule());
  }
}
