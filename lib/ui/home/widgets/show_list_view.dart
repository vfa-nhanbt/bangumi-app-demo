import 'dart:developer';

import 'package:bangumi_app_demo/config/app_dimensions.dart';
import 'package:bangumi_app_demo/extensions/double_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/app_colors.dart';
import '../../../config/app_format.dart';
import '../../../config/app_styles.dart';
import '../../../data/model/show_model.dart';
import 'image_network_widget.dart';

class ShowListView extends StatelessWidget {
  ShowListView({
    super.key,
    required this.shows,
    this.height,
  });

  final List<ShowModel> shows;
  double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 212.h,
      child: ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: shows.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(
            left: index == 0 ? AppDimensions.horizontalMargin : 8.w,
            right: index == shows.length - 1
                ? AppDimensions.horizontalMargin
                : 8.w,
          ),
          child: ShowItem(
            show: shows[index],
            onTap: () {
              log("On show_$index clicked!!");
            },
          ),
        ),
      ),
    );
  }
}

class ShowItem extends StatelessWidget {
  const ShowItem({
    super.key,
    required this.show,
    required this.onTap,
  });

  final ShowModel show;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 186.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: ImageNetworkWidget(
                    height: 120.h,
                    width: 186.w,
                    imageUrl: show.imageUrl,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.whiteColor.withOpacity(0.5),
                  ),
                  child: const Icon(
                    Icons.play_arrow_rounded,
                    color: AppColors.secondaryColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Text(
              show.title,
              style: AppStyles.regularTextStyle,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 8.h),
            Text(
              "${AppFormat.formatDateTime.format(show.startTime)}~${AppFormat.formatTime.format(show.startTime.add(show.length.toDuration()))}",
              style: AppStyles.subtitleTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
