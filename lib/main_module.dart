import 'main_module_routing.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MainModule extends Module {
  @override
  void routes(RouteManager r) => MainModuleRouting().routes(r);
}
