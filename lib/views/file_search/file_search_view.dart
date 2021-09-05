// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:file_search/constants/colors.dart';
import 'package:file_search/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'widget/tab_bar.dart';
import 'widget/search_bar.dart';
import 'widget/file_tile.dart';

import 'file_search_viewmodel.dart';

class FileSearchView extends StatefulWidget {
  const FileSearchView({Key? key}) : super(key: key);

  @override
  State<FileSearchView> createState() => _FileSearchViewState();
}

class _FileSearchViewState extends State<FileSearchView> {
  final Widget _divider = const Divider(height: 5, color: AppColors.borderColor);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FileSearchViewModel>.reactive(
        viewModelBuilder: () => FileSearchViewModel(),
        builder: (context, viewModel, child) => SafeArea(
              child: Scaffold(
                backgroundColor: AppColors.whiteColor,
                appBar: AppBar(
                  backgroundColor: AppColors.greenColor,
                  title: const CustomSearchBar(
                    searchFilter: 'designers',
                  ),
                  bottom: const PreferredSize(
                    preferredSize: Size.fromHeight(49),
                    child: CustomTabBar(tab1: 'Messages', tab2: 'Files'),
                  ),
                ),
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      // ignore: sized_box_for_whitespace
                      Container(
                        height: 49,
                        child: Row(
                          children: [
                            Text('50 Results', style: AppTextStyles.normalGrey),
                            const Expanded(child: SizedBox(width: 300)),
                            Row(
                              children: [
                                Text('Newest', style: AppTextStyles.normalGrey),
                                Image.asset('assets/images/arrows.png'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      _divider,
                      const CustomFileListTile(
                          imagelink: 'assets/images/file_image.png',
                          fileName: 'image.png',
                          subtitle: '550KB png'),
                      _divider
                    ],
                  ),
                ),
              ),
            ));
  }
}

//* Custom Widgets




