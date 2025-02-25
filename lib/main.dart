// import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:provider/provider.dart';
// import 'package:recipe_app_project1/auth/data/repositories/AuthRepository.dart';
// import 'package:recipe_app_project1/auth/presentation/pages/login_view.dart';
// import 'package:recipe_app_project1/core/colors.dart';
//
// import 'auth/presentation/manager/login_view_model.dart';
// import 'categories/data/repositories/categories_repository.dart';
// import 'categories/presentation/pages/categories_view.dart';
// import 'categories/presentation/pages/categories_view_model.dart';
// import 'core/client.dart';
// import 'core/l10n/app_localizations.dart';
// import 'core/sizes.dart';
// import 'onboarding/data/repositories/onboarding_repositories.dart';
// import 'onboarding/presentation/managers/onboarding_view_model.dart';
// import 'onboarding/presentation/pages/onboarding_view.dart';
//
// void main() {
//   runApp(ProfileApp());
// }
//
// class LocalizationViewModel extends ChangeNotifier{
//   Locale _currentLocale = Locale("en");
//   Locale get currentLocale => _currentLocale;
//
//   set currentLocale(Locale locale){
//     _currentLocale=locale;
//     notifyListeners();
//   }
//
// }
//
// class ProfileApp extends StatelessWidget {
//   ProfileApp({super.key});
//
//   final darkTheme=ThemeData(
//     colorScheme: ColorScheme(
//         brightness: Brightness.dark,
//         primary: AppColors.redPinkMain,
//         onPrimary: Colors.white,
//         secondary: AppColors.pink,
//         onSecondary: AppColors.pinkSub,
//         error: Colors.red,
//         onError: Colors.white,
//         surface: AppColors.beigeColor,
//         onSurface: AppColors.redPinkMain
//     ),
//   );
//
//   @override
//   Widget build(BuildContext context) {
//     AppSizes.init(context);
//     return MaterialApp(
//         theme: darkTheme,
//         providers:[
//         ChangeNotifierProvider(create: (context) => LocalizationViewModel()),
//       ],
//     builder:
//     (context, child) => MaterialApp(
//     title: 'Flutter Demo',
//     theme: ThemeData(
//     colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//     ),
//     localizationsDelegates: [
//     GlobalMaterialLocalizations.delegate,
//     GlobalWidgetsLocalizations.delegate,
//     GlobalCupertinoLocalizations.delegate,
//     MyLocalizations.delegate,
//     ],
//     supportedLocales: [Locale("uz"), Locale("en"), Locale("ru")],
//     locale: context.watch<LocalizationViewModel>().currentLocale,
//       home: LoginView(
//         vm: LoginViewModel(
//           repo: AuthRepository(
//             client: ApiClient(),
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app_project1/auth/data/repositories/AuthRepository.dart';
import 'package:recipe_app_project1/auth/presentation/pages/login_view.dart';
import 'package:recipe_app_project1/core/colors.dart';

import 'auth/presentation/manager/login_view_model.dart';
import 'categories/data/repositories/categories_repository.dart';
import 'categories/presentation/pages/categories_view.dart';
import 'categories/presentation/pages/categories_view_model.dart';
import 'categories_detail/data/repositories/categories_detail_repository.dart';
import 'categories_detail/presentation/pages/categories_detail_view.dart';
import 'categories_detail/presentation/pages/categories_detail_view_model.dart';
import 'core/client.dart';
import 'core/l10n/app_localizations.dart';
import 'core/sizes.dart';
import 'onboarding/data/repositories/onboarding_repositories.dart';
import 'onboarding/presentation/managers/onboarding_view_model.dart';
import 'onboarding/presentation/pages/onboarding_view.dart';

void main() {
  runApp(ProfileApp());
}

class LocalizationViewModel extends ChangeNotifier {
  Locale _currentLocale = Locale("en");
  Locale get currentLocale => _currentLocale;

  set currentLocale(Locale locale) {
    _currentLocale = locale;
    notifyListeners();
  }
}

class ProfileApp extends StatelessWidget {
  ProfileApp({super.key});

  final darkTheme = ThemeData(
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.redPinkMain,
      onPrimary: Colors.white,
      secondary: AppColors.pink,
      onSecondary: AppColors.pinkSub,
      error: Colors.red,
      onError: Colors.white,
      surface: AppColors.beigeColor,
      onSurface: AppColors.redPinkMain,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LocalizationViewModel()),
      ],
      child: Builder(
        builder: (context) {
          AppSizes.init(context);
          return MaterialApp(
            title: 'Flutter Demo',
            theme: darkTheme,
            localizationsDelegates: [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              MyLocalizations.delegate,
            ],
            supportedLocales: [Locale("uz"), Locale("en"), Locale("ru")],
            locale: context.watch<LocalizationViewModel>().currentLocale,
            home: CategoriesDetailView(
              viewModel:CategoriesDetailViewModel(
                repo: CategoriesDetailRepository (
                  client: ApiClient(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
