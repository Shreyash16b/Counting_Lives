import 'package:counting_lives/presentation/Welcome_1.dart';
import 'package:counting_lives/presentation/services_screen/services_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'core/app_export.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: theme,
          title: 'counting_lives',
          debugShowCheckedModeBanner: false,
          // home: AppNavigationScreen(),
          // home: ServiceProfileReviewPage(),
          home: Welcome_1(),
          // home: ServicesScreen(),
          // home: ServiceProfilePage(),
          // home: ServiceProfileTabContainerScreen(),
          // initialRoute: AppRoutes.appNavigationScreen,
          // routes: AppRoutes.routes,
        );
      },
    );
  }
}
