import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:laza/helper/dio_helper.dart';
import 'package:laza/view/splash_screen.dart';
import 'cubit/login_cubit.dart';
import 'cubit/signup_cubit.dart';
import 'cubit/splach_cubit.dart';
import 'firebase_options.dart';
import 'l10n/app_localizations.dart';
import 'view/screen1.dart';
void main()async {
   WidgetsFlutterBinding.ensureInitialized();
   FlutterError.onError = (errorDetails) {
     FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
   };
   await Firebase.initializeApp(
     options: DefaultFirebaseOptions.currentPlatform,
   );
  runApp(const MyApp());

    DioHelper.initilaized();
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
        providers: [
          BlocProvider<LoginCubit>(
            create: (_) => LoginCubit(),
          ),
          BlocProvider<SignupCubit>(
            create: (_) => SignupCubit(),
          ),
          BlocProvider<GenderSelection>(
            create: (_) => GenderSelection(),
          ),
        ],
        child: GetMaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: Locale("en"),
        debugShowCheckedModeBanner: false,
        home:SplashScreen(),
        ));
  }
}
