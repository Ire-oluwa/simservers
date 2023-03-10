import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:simservers/models/new_device/new_device_data.dart';
import 'package:simservers/providers/add_api_provider/add_api_provider.dart';
import 'package:simservers/providers/choose_plan_provider/choose_plan_provider.dart';
import 'package:simservers/providers/device_info_provider.dart';
import 'package:simservers/providers/faq_provider/faq_provider.dart';
import 'package:simservers/providers/transactions_provider/transactions_provider.dart';
import 'package:simservers/screens/activate_cloud_service/activate_cloud_service.dart';
import 'package:simservers/screens/admin_panel/admin_panel_main.dart';
import 'package:simservers/screens/admin_panel/admin_settings/admin_settings.dart';
import 'package:simservers/screens/admin_panel/admin_statistics/admin_statistics.dart';
import 'package:simservers/screens/admin_panel_manage_user_redirect/manage_user.dart';
import 'package:simservers/screens/api_settings/api_settings.dart';
import 'package:simservers/screens/change_password/change_password.dart';
import 'package:simservers/screens/choose_plan/choose_plan.dart';
import 'package:simservers/screens/edit_profile/edit_profile.dart';
import 'package:simservers/screens/forgot_password/forgot_password.dart';
import 'package:simservers/screens/help/contact_us.dart';
import 'package:simservers/screens/help/faq.dart';
import 'package:simservers/screens/landing/landing_page.dart';
import 'package:simservers/screens/notifications/notifications.dart';
import 'package:simservers/screens/notifications_view/notifications_view.dart';
import 'package:simservers/screens/register_sim_service/register_sim_service.dart';
import 'package:simservers/screens/reset_api_key/reset_api_key.dart';
import 'package:simservers/screens/set_transaction_pin/set_transaction_pin.dart';
import 'package:simservers/screens/settings/change_password_in_settings/change_password_in_settings.dart';
import 'package:simservers/screens/sign_in/sign_in.dart';
import 'package:simservers/screens/sign_up_screen/sign_up.dart';
import 'package:simservers/screens/splash/final_splash.dart';
import 'package:simservers/screens/splash/initial_splash.dart';
import 'package:simservers/screens/transactions/transactions.dart';

import 'providers/settings_provider/settings_provider.dart';
import 'screens/admin_panel/admin_panel_manage_members/manage_members.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DeviceInfo()),
        ChangeNotifierProvider(create: (_) => EditProvider()),
        ChangeNotifierProvider(create: (_) => ChangePasswordSettingsProvider()),
        ChangeNotifierProvider(create: (_) => SetTransactionsPinProvider()),
        ChangeNotifierProvider(create: (_) => ResetApiKeyProvider()),
        ChangeNotifierProvider(create: (_) => AddApiProvider()),
        ChangeNotifierProvider(create: (_) => TransactionProvider()),
        ChangeNotifierProvider(create: (_) => ChoosePlanProvider()),
        ChangeNotifierProvider(create: (_) => FAQProvider()),
        ChangeNotifierProvider(create: (_) => NewDeviceData())
      ],
      child: const SimServers(),
    ),
  );
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
            EditProfileScreen.id: (context) => const EditProfileScreen(),
            ChangePasswordInSettings.id: (context) =>
                const ChangePasswordInSettings(),
            SetTransactionPin.id: (context) => const SetTransactionPin(),
            ResetApiKey.id: (context) => const ResetApiKey(),
            ApiSettings.id: (context) => const ApiSettings(),
            AdminPanel.id: (context) => const AdminPanel(),
            ManageMembers.id: (context) => const ManageMembers(),
            AdminStatistics.id: (context) => const AdminStatistics(),
            AdminSettings.id: (context) => const AdminSettings(),
            ManageUser.id: (context) => const ManageUser(),
            Notifications.id: (context) => const Notifications(),
            NotificationsView.id: (context) => const NotificationsView(),
            ActivateCloudServices.id: (context) =>
                const ActivateCloudServices(),
            TransactionsScreen.id: (context) => const TransactionsScreen(),
            ChoosePlan.id: (context) => const ChoosePlan(),
            FAQ.id: (context) => const FAQ(),
            ContactUs.id: (context) => const ContactUs(),
          },
        );
      },
    );
  }
}
