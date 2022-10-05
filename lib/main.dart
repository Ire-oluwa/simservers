import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simservers/sceens/splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const SimServers());
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
          initialRoute: Splash.id,
          routes: {
            Splash.id: (context) => const Splash(),
          },
        );
      },
    );
  }
}
