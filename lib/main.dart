import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';
import 'app/widgets/splash.dart';
import 'app/modules/pay/pay.dart';
import 'app/modules/profil/profil.dart';
import 'app/pulsa/detailpulsa.dart';
import 'app/pulsa/isipulsa.dart';
import 'app/modules/inbox/inbox_view.dart';
import 'app/modules/login/views/login_view.dart';
import 'app/modules/topup/topup.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: Routes.LOGIN,
      getPages: AppPages.routes,
    );
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 3)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SplashScreen();
        } else {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Application",
            initialRoute: Routes.HOME,
            getPages: AppPages.routes,
          );
        }
      },
    );
  }

}
