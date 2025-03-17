import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app_project1/category_detail/data/repositories/recipe_repoitory.dart';
import 'package:recipe_app_project1/community/data/models/recipe_community_model.dart';
import 'package:recipe_app_project1/community/presentation/manager/recipe_community_view_model.dart';
import 'package:recipe_app_project1/community/presentation/pages/recipe_community_view.dart';
import 'package:recipe_app_project1/reviews/presentation/pages/review_page.dart';
import 'package:recipe_app_project1/reviews/presentation/widgets/reviews_appbar.dart';
import 'core/client.dart';
import 'core/dependencies.dart' show providers;
import 'core/l10n/app_localizations.dart';
import 'core/localization_viewmodel.dart';
import 'core/preferences.dart';
import 'core/routing/router.dart';
import 'core/sizes.dart';
import 'core/utils/theme.dart';

final navigatorKey = GlobalKey<NavigatorState>();


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);
    return ScreenUtilInit(
      designSize: Size(430, 932),
      child: MultiProvider(
        providers: providers,
        builder: (context, child) => MaterialApp.router(
          theme: AppThemes.darkTheme,
          debugShowCheckedModeBanner: false,
          routerConfig: router,
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            MyLocalizations.delegate,
          ],
          supportedLocales: [
            Locale("uz"),
            Locale("en"),
          ],
          locale: context.watch<LocalizationViewModel>().currentLocale,
        ),
      ),
    );
  }
}
