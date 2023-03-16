import 'dart:developer';

import 'package:bangumi_app_demo/config/app_dimensions.dart';
import 'package:bangumi_app_demo/data/mock/mock_data.dart';
import 'package:bangumi_app_demo/ui/home/widgets/show_list_view.dart';
import 'package:bangumi_app_demo/ui/home/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/banner_page_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              BannerPageView(
                height: 0.4.sh,
                banners: MockData.instance.banners,
              ),
              SizedBox(height: AppDimensions.heightSpacer),
              TitleWidget(
                title: "Title One",
                onIconTap: () {
                  log("Title_One clicked!");
                },
              ),
              SizedBox(height: 12.h),
              ShowListView(shows: MockData.instance.showsTileOne),
              SizedBox(height: AppDimensions.heightSpacer),
              TitleWidget(
                title: "Title Two",
                onIconTap: () {
                  log("Title_Two clicked!");
                },
              ),
              SizedBox(height: 12.h),
              ShowListView(shows: MockData.instance.showsTileOne),
              SizedBox(height: 8.h),
            ],
          ),
        ),
      ),
    );
  }
}
