import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:simservers/providers/device_info_provider.dart';
import 'package:simservers/screens/change_password/change_password.dart';
import 'package:simservers/screens/forgot_password/forgot_password.dart';
import 'package:simservers/screens/landing/landing_page.dart';
import 'package:simservers/screens/register_sim_service/register_sim_service.dart';
import 'package:simservers/screens/sign_in/sign_in.dart';
import 'package:simservers/screens/sign_up_screen/sign_up.dart';
import 'package:simservers/screens/splash/final_splash.dart';
import 'package:simservers/screens/splash/initial_splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => DeviceInfo()),
    ],
    child: const SimServers(),
  ));
}

class SimServers extends StatelessWidget {
  const SimServers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(),
          initialRoute: InitialSplashScreen.id,
          routes: {
            InitialSplashScreen.id: (context) => const InitialSplashScreen(),
            FinalSplashScreen.id: (context) => const FinalSplashScreen(),
            LandingPage.id: (context) => const LandingPage(),
            SignUpScreen.id: (context) => const SignUpScreen(),
            SignInScreen.id: (context) => const SignInScreen(),
            ForgotPasswordScreen.id: (context) => const ForgotPasswordScreen(),
            ChangePasswordScreen.id: (context) => const ChangePasswordScreen(),
            RegisterSimService.id: (context) => const RegisterSimService(),
          },
        );
      },
    );
  }
}
