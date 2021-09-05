import 'package:flutter/material.dart';

import 'package:file_search/constants/colors.dart';
import 'package:file_search/constants/styles.dart';

// search bar
final Image closeIcon = Image.asset('assets/images/close_search.png');
final Image voiceSearch = Image.asset('assets/images/voice_search.png');

class CustomSearchBar extends StatelessWidget {
  final searchFilter;
  const CustomSearchBar({
    Key? key,
    this.searchFilter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 9.7),
      decoration: BoxDecoration(
          color: AppColors.paleGreen, borderRadius: BorderRadius.circular(8)),
      child: ListTile(
          leading: closeIcon,
          title: Text(searchFilter, style: AppTextStyles.unreadText),
          trailing: voiceSearch),
    );
  }
}