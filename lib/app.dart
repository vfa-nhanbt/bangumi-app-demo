import 'package:bangumi_app_demo/config/app_colors.dart';
import 'package:bangumi_app_demo/config/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'config/app_dimensions.dart';
import 'config/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: AppDimensions.designSize,
      builder: (context, child) => GestureDetector(
        onTap: () {
          // Unfocus when tap out side
          FocusScopeNode currentNode = FocusScope.of(context);
          if (!currentNode.hasPrimaryFocus) {
            currentNode.unfocus();
            currentNode.requestFocus(FocusNode());
          }
        },
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerDelegate: AppRoutes.instance.router.routerDelegate,
          routeInformationParser:
              AppRoutes.instance.router.routeInformationParser,
          routeInformationProvider:
              AppRoutes.instance.router.routeInformationProvider,
          theme: ThemeData(
            colorScheme: AppStyles.appColorSchema,
            scaffoldBackgroundColor: AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
