import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = "HomeScreen";
  static final menuOptions = <MenuOption>[
    MenuOption(
        route: "ListView1",
        icon: Icons.list_alt_outlined,
        name: "ListView tipo 1",
        screen: const ListView1Screen()),
    MenuOption(
        route: "ListView2",
        icon: Icons.list_alt_outlined,
        name: "ListView tipo 2",
        screen: const ListView2Screen()),
    MenuOption(
        route: "CardScreen",
        icon: Icons.calendar_view_day_outlined,
        name: "Card Screen",
        screen: const CardScreen()),
    MenuOption(
        route: "AlertScreen",
        icon: Icons.crisis_alert_outlined,
        name: "Alert Screen",
        screen: const AlertScreen()),
    MenuOption(
        route: "AvatarScreen",
        icon: Icons.supervised_user_circle_outlined,
        name: "Avatar Screen",
        screen: const AvatarScreen()),
    MenuOption(
        route: "AnimatedScreen",
        icon: Icons.play_arrow_outlined,
        name: "Animated Container",
        screen: const AnimatedScreen()),
  ];

  /*static Map<String, Widget Function(BuildContext)> routes = {
    'HomeScreen': (BuildContext context) => const HomeScreen(),
    'ListView1': (BuildContext context) => const ListView1Screen(),
    'ListView2': (BuildContext context) => const ListView2Screen(),
    'CardScreen': (BuildContext context) => const CardScreen(),
    'AlertScreen': (BuildContext context) => const AlertScreen(),
  };*/

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({"HomeScreen": (context) => const HomeScreen()});
    for (var option in menuOptions) {
      appRoutes.addAll({option.route: (context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
