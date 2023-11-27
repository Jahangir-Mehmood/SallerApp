import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sellerapp/consts/colors.dart';

import 'consts/strings.dart';
import 'consts/styles.dart';
import 'infrastructure/navigation/navigation.dart';
import 'infrastructure/navigation/routes.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  var initialRoute = await Routes.initialRoute;
  // await Firebase.initializeApp();
  runApp(Main(initialRoute));
}

class Main extends StatelessWidget {
  final String initialRoute;
  Main(this.initialRoute);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent, elevation: 0, iconTheme: IconThemeData(color: darkFontGrey)),
        fontFamily: regular,
        // useMaterial3: true,
      ),
      initialRoute: initialRoute,
      getPages: Nav.routes,
    );
  }
}
