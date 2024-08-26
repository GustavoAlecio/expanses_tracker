import 'package:flutter_modular/flutter_modular.dart';


import 'home_module_paths.dart';
import 'presentation/presentation.dart'; 

class HomeModuleRouting extends Module {
  @override
  void routes(RouteManager r) {
    r.child(HomeModulePaths.home, child: (_) => const HomePage());
  }
}
