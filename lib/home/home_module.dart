import 'package:flutter_modular/flutter_modular.dart';

import 'home_module_routing.dart';

class HomeModule extends Module {
  @override
  void routes(RouteManager r) =>  HomeModuleRouting().routes(r);
}
