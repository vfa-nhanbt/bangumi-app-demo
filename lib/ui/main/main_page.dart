import 'package:bangumi_app_demo/ui/empty_page.dart';
import 'package:bangumi_app_demo/ui/home/home_page.dart';
import 'package:flutter/material.dart';

import '../../config/app_colors.dart';
import 'lazy_index_stack.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  // Tabs
  late final TabController tabController = TabController(
    length: 5,
    vsync: this,
    initialIndex: 0,
  );

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  final List<BottomNavigationBarItem> _items = [
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.home_outlined,
        color: AppColors.secondaryColor,
      ),
      label: "Home",
      backgroundColor: AppColors.whiteColor,
      activeIcon: Icon(
        Icons.home_outlined,
        color: AppColors.whiteColor,
      ),
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.search,
        color: AppColors.secondaryColor,
      ),
      label: "Search",
      backgroundColor: AppColors.whiteColor,
      activeIcon: Icon(
        Icons.search,
        color: AppColors.whiteColor,
      ),
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.tv,
        color: AppColors.secondaryColor,
      ),
      label: "Watch",
      backgroundColor: AppColors.whiteColor,
      activeIcon: Icon(
        Icons.tv,
        color: AppColors.whiteColor,
      ),
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.list,
        color: AppColors.secondaryColor,
      ),
      label: "List",
      backgroundColor: AppColors.whiteColor,
      activeIcon: Icon(
        Icons.list,
        color: AppColors.whiteColor,
      ),
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.settings,
        color: AppColors.secondaryColor,
      ),
      label: "Settings",
      backgroundColor: AppColors.whiteColor,
      activeIcon: Icon(
        Icons.settings,
        color: AppColors.whiteColor,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: LazyIndexedStack(
        index: tabController.index,
        children: const [
          HomePage(),
          EmptyPage(title: "Search"),
          EmptyPage(title: "Watch"),
          EmptyPage(title: "List"),
          EmptyPage(title: "Settings"),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.primaryColorSwatch.shade300,
              AppColors.primaryColorSwatch.shade400,
              AppColors.primaryColorSwatch.shade500,
            ],
            stops: const [0, 0.3, 0.9],
            begin: Alignment.bottomLeft,
            tileMode: TileMode.clamp,
          ),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: _items,
          backgroundColor: Colors.transparent,
          elevation: 0,
          currentIndex: tabController.index,
          onTap: (int idx) {
            setState(() {
              tabController.animateTo(
                idx,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            });
          },
          unselectedItemColor: AppColors.secondaryColor,
          selectedItemColor: AppColors.whiteColor,
        ),
      ),
    );
  }
}
