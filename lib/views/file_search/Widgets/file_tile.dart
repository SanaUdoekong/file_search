import 'package:flutter/material.dart';

import 'package:file_search/constants/colors.dart';
import 'package:file_search/constants/styles.dart';

// File List Tile
class CustomFileListTile extends StatelessWidget {
  final imagelink;
  final fileName;
  final subtitle;
  const CustomFileListTile({
    Key? key,
    this.imagelink,
    this.fileName,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(imagelink),
      title: Text(
        fileName,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          color: AppColors.blackColor,
          fontSize: 14,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
          fontWeight: FontWeight.w400,
          color: AppColors.greyColor,
          fontSize: 12,
        ),
      ),
    );
  }
}