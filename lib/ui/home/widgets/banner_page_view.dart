import 'package:bangumi_app_demo/ui/home/widgets/image_network_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../config/app_colors.dart';
import '../../../data/model/banner_model.dart';

class BannerPageView extends StatelessWidget {
  BannerPageView({
    super.key,
    required this.height,
    required this.banners,
  });

  final double height;
  final List<BannerModel> banners;

  final controller = PageController(
    viewportFraction: 1,
    keepPage: true,
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: PageView.builder(
              controller: controller,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ImageNetworkWidget(
                imageUrl: banners[index % banners.length].imageUrl,
              ),
            ),
          ),
          SizedBox(height: 8.h),
          SmoothPageIndicator(
            controller: controller,
            count: banners.length,
            axisDirection: Axis.horizontal,
            effect: WormEffect(
              dotColor: AppColors.secondaryColor,
              activeDotColor: AppColors.whiteColor,
              dotHeight: 8.h,
              dotWidth: 8.w,
            ),
          )
        ],
      ),
    );
  }
}
