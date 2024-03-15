//import 'package:BuyAndSell/binding.dart';
import 'package:BuyAndSell/bindings/intialbindingds.dart';

import 'package:BuyAndSell/core/localization/translation.dart';

import 'package:BuyAndSell/core/services/services.dart';
import 'package:BuyAndSell/firebase_options.dart';
import 'package:BuyAndSell/routes.dart';

import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'core/localization/changelocal.dart';
import 'core/repository/auth_repository/auth_repository.dart';
import 'view/screen/sell_forms/form.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));
  Provider.debugCheckInvalidValueType = null;
  await initialServices();
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => ProductFormState()),
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controller.language,
      theme: controller.appTheme,
      initialBinding: IntialBindings(),
      getPages: routes,
    );
  }
}
