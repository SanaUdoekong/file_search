import 'package:flutter/material.dart';

import 'package:file_search/constants/colors.dart';
import 'package:file_search/constants/styles.dart';

// tab bar
class CustomTabBar extends StatelessWidget {
  final tab1;
  final tab2;
  const CustomTabBar({
    Key? key,
    this.tab1,
    this.tab2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: DefaultTabController(
        length: 2,
        child: TabBar(
          labelStyle: AppTextStyles.labelText,
          unselectedLabelStyle: AppTextStyles.unselectedLabelText,
          tabs: [
            Tab(text: tab1),
            Tab(text: tab2),
          ],
        ),
      ),
    );
  }
}