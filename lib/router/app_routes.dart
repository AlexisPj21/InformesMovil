import 'package:flutter/material.dart';

import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // TODO: borrar home
    MenuOption(route: 'listview1', name: 'Lista principal', screen: const Listview1Screen(), icon: Icons.list_alt ),
    MenuOption(route: 'listview2', name: 'Lista secundaria', screen: const Listview2Screen(), icon: Icons.list ),
    MenuOption(route: 'alert', name: 'Alerta de informe', screen: const AlertScreen(), icon: Icons.add_alert_outlined ),
    MenuOption(route: 'card', name: 'Informacion', screen: const CardScreen(), icon: Icons.info ),

  ];


  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({ 'home' : ( BuildContext context ) => const HomeScreen() });

    for (final option in menuOptions ) {
      appRoutes.addAll({ option.route : ( BuildContext context ) => option.screen });
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute( RouteSettings settings) {        
      return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
      );
  }

}
